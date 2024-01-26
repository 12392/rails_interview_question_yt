# What are modules in Ruby? How can you differentiate class and instance methods in a module?

# In Ruby, modules are a way to group reusable code and provide a mechanism for multiple inheritance. 
# Modules encapsulate methods, constants, and other module or class definitions. 
# They serve as containers for methods and are often used for code organization, namespacing, and mixin functionality.

# Here's a brief overview of modules in Ruby:

# Declaring a Module:
module MyModule
  def my_method
    puts "This is a module method."
  end
end

# Including a Module in a Class:
class MyClass
  include MyModule
end

# Extending a Class with a Module:
class MyClass
  extend MyModule
end

# Differentiating Class and Instance Methods in a Module:
# Class Methods in a Module:
# Class methods in a module are defined using the self keyword before the method name or by using the module name followed by a dot.
module MyModule
  def self.class_method
    puts "This is a class method."
  end

  def MyModule.another_class_method
    puts "Another class method."
  end
end

# Instance Methods in a Module:

# Instance methods in a module are defined without the self keyword. 
# These methods become available to instances of classes that include or extend the module.
module MyModule
  def instance_method
    puts "This is an instance method."
  end
end

# Using Module Methods in a Class:
class MyClass
  include MyModule
end

# Creating an instance
obj = MyClass.new

# Calling instance method
obj.instance_method

# Calling class method
MyClass.class_method
MyClass.another_class_method

# Module Inheritance and Composition:
# Modules support multiple inheritance, allowing a class to include or extend multiple modules.
# Module composition involves creating a new module that includes or extends other modules. 
# This composed module can then be included or extended by classes.
module ModuleA
  def method_a
    puts "Method A"
  end
end

module ModuleB
  def method_b
    puts "Method B"
  end
end

module CombinedModule
  include ModuleA
  extend ModuleB
end

class MyClass
  include CombinedModule
end

obj = MyClass.new
obj.method_a  # Accessing instance method from ModuleA
MyClass.method_b  # Accessing class method from ModuleB

# In summary, modules in Ruby provide a way to encapsulate and reuse code. 
# Class and instance methods within a module can be differentiated by the presence or absence of the 
# self keyword in their definitions. Modules support both class and instance methods, and they play a key role 
# in achieving code organization, encapsulation, and mixin functionality.
