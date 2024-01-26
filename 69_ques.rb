
# What are class level and module level attributes?

# In Ruby, class-level attributes and module-level attributes refer to variables that are associated with a class or a module, respectively. 
# These attributes can be used to store data that is shared among instances of a class or module, providing a way to manage shared state.

# Class-Level Attributes:
# Class-level attributes in Ruby are typically represented by class variables, which are prefixed with @@. 
# Class variables are shared among all instances of a class, and they are associated with the class itself rather than with instances of the class.

# Example of class-level attribute using a class variable:
class MyClass
  @@class_variable = "I am a class variable"

  def self.class_variable
    @@class_variable
  end

  def initialize(instance_variable)
    @instance_variable = instance_variable
  end

  def instance_variable
    @instance_variable
  end
end

# Accessing class-level attribute
puts MyClass.class_variable  # Output: "I am a class variable"

# Creating instances of the class
obj1 = MyClass.new("Instance 1")
obj2 = MyClass.new("Instance 2")

# Accessing instance-level attribute
puts obj1.instance_variable  # Output: "Instance 1"
puts obj2.instance_variable  # Output: "Instance 2"

# In this example, @@class_variable is a class-level attribute, and each instance of MyClass has its own @instance_variable.

# Module-Level Attributes:
# Modules in Ruby do not have the concept of instance variables, but they can have module-level attributes 
# using class variables when included in classes. When a module is included in a class, 
# any class variables defined in the module become class variables of that class.

# Example of module-level attribute using a class variable:
module MyModule
  @@module_variable = "I am a module variable"

  def self.module_variable
    @@module_variable
  end
end

class MyClass1
  include MyModule

  def initialize(instance_variable)
    @instance_variable = instance_variable
  end

  def instance_variable
    @instance_variable
  end
end

# Accessing module-level attribute
puts MyClass1.module_variable  # Output: "I am a module variable"

# Creating instances of the class
obj1 = MyClass1.new("Instance 1")
obj2 = MyClass1.new("Instance 2")

# Accessing instance-level attribute
puts obj1.instance_variable  # Output: "Instance 1"
puts obj2.instance_variable  # Output: "Instance 2"
# In this example, @@module_variable is a module-level attribute when included in MyClass.

# It's important to note that class variables are shared among subclasses and modules when used in the context of classes. 
# Care should be taken to avoid unintended side effects and to properly manage shared state. Class and module-level attributes 
# are useful for storing data that is shared among instances of a class or across classes and modules
