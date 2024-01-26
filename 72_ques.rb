# What do you mean by singleton (Eigen) class in Ruby?

# In Ruby, a singleton class is also known as an "eigenclass" or "metaclass." 
# It is a special class that is automatically created and associated with a single object. 
# The singleton class holds methods that are specific to that individual object, 
# and it allows you to define methods that are only available to that particular instance.

# Here's a breakdown of the concepts:

# Singleton Class:
# A singleton class is a class that is created and associated with a single object.
# It is not explicitly defined in the code; rather, Ruby creates it dynamically for a specific object when needed.
# It acts as a container for methods that are unique to that object.

# Eigenclass or Metaclass:
# The terms "eigenclass" and "metaclass" are often used interchangeably with "singleton class."
# "Eigen" is a German word meaning "own" or "individual," and in the context of Ruby, 
# it reflects the uniqueness of the singleton class associated with a single object.

# Example:

obj = "Hello, Ruby!"

# Define a method in the singleton class (eigenclass) of 'obj'
def obj.my_custom_method
    puts "This is a custom method for this specific object."
end

# Call the custom method
obj.my_custom_method
# Output: This is a custom method for this specific object.

# In this example:
# obj is a string object.
# We define a method called my_custom_method in the singleton class of obj.
# The method is specific to this individual object.
# You can inspect the singleton class of an object using the class method with the singleton_class method or the class << obj syntax:

# Using singleton_class method
singleton_class = obj.singleton_class
puts singleton_class.inspect  # Output: #<Class:#<String:0x00007f7f1a86fb20>>

# Using the class << obj syntax
class << obj
    puts self.inspect  # Output: #<Class:#<String:0x00007f7f1a86fb20>>
end

# In Ruby, metaprogramming often involves working with singleton classes to dynamically define methods for specific objects, 
# modify behavior, or implement features such as class methods for individual instances. Understanding singleton classes is crucial 
# for advanced Ruby programming and metaprogramming.
