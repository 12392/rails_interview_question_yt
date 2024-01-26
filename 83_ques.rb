# What are the differences between lambda and proc?

# In Ruby, both lambda and proc are objects of the Proc class, representing blocks of code that can be stored in variables. 
# While they share some similarities, there are key differences between them in terms of behavior and usage.

# Differences between Lambda and Proc:

# Argument Checking:
# Lambda:
# Enforces the number of arguments passed to it. If the number of arguments is incorrect, a LambdaError is raised.

# Proc:
# Does not enforce the number of arguments. If you pass the wrong number of arguments to a Proc, 
# it adjusts, assigning nil to missing parameters or ignoring extra ones.

# Lambda
lambda_example = lambda { |a, b| puts "#{a} #{b}" }
lambda_example.call(1, 2)    # Outputs: "1 2"
# lambda_example.call(1)     # Raises LambdaError (wrong number of arguments)

# Proc
proc_example = Proc.new { |a, b| puts "#{a} #{b}" }
proc_example.call(1, 2)       # Outputs: "1 2"
proc_example.call(1)          # Outputs: "1 "


# Return Behavior:

# Lambda:
# Returns control to the calling method or block.

# Proc:
# Returns from the enclosing method or block where the Proc was defined, even if the Proc itself was called from a different context.

# Lambda
lambda_example = lambda { return "Lambda" }
puts lambda_example.call      # Outputs: "Lambda"

# Proc
proc_example = Proc.new { return "Proc" }
puts proc_example.call        # Outputs: "Proc" and exits the entire program, not just the block

# Scope:

# Lambda:
# Respects the local variable scope.

# Proc:
# Captures and retains the local variable scope of the enclosing method where it was defined, even if called outside that scope.

def scope_example
  local_variable = 10
  lambda_example = lambda { puts local_variable }
  proc_example = Proc.new { puts local_variable }

  lambda_example.call
  proc_example.call
end

scope_example
# Outputs:
# 10      (from lambda, respects local scope)
# 10      (from proc, captures local scope)

# New Object Creation:

# Lambda:
# Created using the lambda keyword.

# Proc:
# Created using the Proc.new method or the shorthand proc keyword.

lambda_example = lambda { |a| puts a }
proc_example = Proc.new { |a| puts a }
proc_shorthand = proc { |a| puts a }

# Summary:
# Both lambda and proc are instances of the Proc class, representing blocks of code.

# Lambdas enforce the number of arguments and have a more straightforward return behavior, making them similar to methods.

# Procs do not enforce the number of arguments, capture the enclosing local variable scope, and have a different
# return behavior, making them more flexible in certain situations.

# The choice between lambda and proc depends on the specific requirements of your code and the behavior you need 
# in terms of argument checking, return behavior, and variable scope.
