# What is yield in Ruby? What happens if you call the method, which includes yield, without passing a block?

# In Ruby, yield is a keyword used within a method to invoke a block that is associated with the method. 
# It allows you to pass control from the method to the block, executing the block's code at the point where yield is called in the method.

# Here's a simple example:

def say_hello
  puts "Hello, start of the method."
  yield
  puts "Hello, end of the method."
end

say_hello do
  puts "Hello from the block!"
end

# In this example, when say_hello is called with a block, the block is executed at the point of the yield statement. The output will be:

Hello, start of the method.
Hello from the block!
Hello, end of the method.

# If you call the method that includes yield without passing a block, and the method attempts to yield to a block that 
# doesn't exist, a LocalJumpError will be raised. You can handle this situation using the block_given? method to check if a block 
# is provided before calling yield.

Example:

def say_hello
  puts "Hello, start of the method."
  yield if block_given?
  puts "Hello, end of the method."
end

say_hello  # No block is provided, so yield is not called.

# In this modified example, the block_given? check ensures that yield is only called if a block is provided. 
# If no block is given, the method continues without attempting to yield, avoiding the LocalJumpError.

# In summary, yield is used to invoke a block associated with a method. If the method is called without a block,
# you should use block_given? to check before calling yield to avoid raising a LocalJumpError.
