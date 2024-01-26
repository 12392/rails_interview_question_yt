# What is the difference between equal? and eql? method in Ruby?

# In Ruby, the equal? and eql? methods are used for object comparison, but they have different behaviors and are meant for different use cases.

# equal? Method:
# The equal? method checks if two objects refer to the exact same object in memory. 
# It returns true if the objects are identical, meaning they share the same memory address. 
# This method is more strict and checks for object identity rather than content.

a = "hello"
b = "hello"
c = a

puts a.equal?(b)  # false, different objects
puts a.equal?(c)  # true, same object
# In this example, a and b both contain the string "hello," but they are different objects in memory. 
# c references the same object as a, so a.equal?(c) returns true.

# eql? Method:
# The eql? method is more relaxed than equal?. It is meant for comparing the values or content of objects rather than their identity. 
# By default, eql? behaves similarly to ==, but it can be overridden in classes to provide custom comparison logic.

a = 10
b = 10.0

puts a.eql?(b)  # false, different types
puts a == b    # true, value equality

# In this example, a.eql?(b) returns false because the objects have different types (Fixnum and Float), 
# while a == b returns true because the values are considered equal.

# When to Use Each:
# Use equal? when you specifically want to check if two variables reference the exact same object in memory. 
# It is typically used for object identity.

# Use eql? (or ==) when you want to check if two objects are equal in terms of their content or value. 
# It's more flexible and can be customized by overriding the method in your classes.

# Overriding eql?:
# You can override the eql? method in your classes to provide custom equality logic. 
# This is often done when you want to compare instances of your own classes based on specific attributes or criteria.

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def eql?(other)
    self.class == other.class && name == other.name && age == other.age
  end

  alias == eql?
end

# In this example, eql? is overridden to compare instances of the Person class based on both name and age.

# In summary, equal? checks for object identity by comparing memory addresses, while eql? is meant for value comparison and is more flexible. 
# It's important to choose the method that suits your specific use case: identity check with equal? or content/value check with eql?.
