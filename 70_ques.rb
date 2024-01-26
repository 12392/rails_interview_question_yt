# What is the difference between include and extend in rails?

# In Rails, include and extend are two different ways to add modules to a class, providing additional functionality to instances 
# of that class or to the class itself. Both are used for mixin functionality, but they are applied in different contexts.

# include:

# Usage: Used to add module methods as instance methods of a class.
# Context: Typically used within a class definition.
# Effect: When a module is included in a class using include, the module's methods become instance methods of the class, 
# and instances of the class gain access to those methods.

# Example:

module MyModule
  def my_method
    puts "This is a module method."
  end
end

class MyClass
  include MyModule
end

obj = MyClass.new
obj.my_method  # This is a module method.

# extend:

# Usage: Used to add module methods as class methods of a class.
# Context: Typically used outside the class definition or within a class definition but applied to the class itself.
# Effect: When a module is extended in a class using extend, the module's methods become class methods of the class itself, 
# and the class gains access to those methods.

# Example:
module MyModule
  def my_method
    puts "This is a module method."
  end
end

class MyClass
  extend MyModule
end

MyClass.my_method  # This is a module method.

# Summary:
# Use include to add module methods as instance methods of a class. 
# This is useful when you want instances of the class to have access to the methods.

# Use extend to add module methods as class methods of a class. 
# This is useful when you want the class itself (not instances) to have access to the methods.

# Both include and extend can be used within a class definition or outside it, 
# depending on whether you want to include or extend 
# the class itself or instances of the class.

# You can use include and extend together to mix in both instance methods and class methods from modules.
module MyModule
  def instance_method
    puts "This is an instance method."
  end

  def self.class_method
    puts "This is a class method."
  end
end

class MyClass
  include MyModule   # Adds instance methods
  extend MyModule    # Adds class methods
end

obj = MyClass.new
obj.instance_method  # This is an instance method.
MyClass.class_method # This is a class method.

# In summary, include is used for instance methods, and extend is used for class methods. 
# They provide a way to modularize and reuse code in a clean and organized manner.
