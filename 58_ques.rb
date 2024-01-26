# In Ruby, how many ways to invoke a method? Illustrate with examples.

# In Ruby, there are several ways to invoke a method. The most common and straightforward way is to use the dot (.) notation to call a
#  method on an object. However, there are a few other ways to invoke methods, including using the double-colon (::) notation, 
#  sending a message with the send method, and using the public_send method. Here are examples of each:

# 1. Dot Notation:
# Example with a simple class
class MyClass
  def my_method
    puts "Hello from my_method!"
  end
end

obj = MyClass.new
obj.my_method  # Using dot notation

# 2. Double-Colon Notation:
# Example with a module
module MyModule
  def self.my_static_method
    puts "Hello from my_static_method!"
  end
end

MyModule::my_static_method  # Using double-colon notation

# 3. send Method:
# The send method allows you to dynamically invoke a method on an object. 
# This is particularly useful when the method name is determined at runtime.

class AnotherClass
  def dynamic_method(name)
    puts "Hello from #{name}!"
  end
end

obj = AnotherClass.new
obj.send(:dynamic_method, "dynamic_method")  # Using send method

# 4. public_send Method:
# The public_send method is similar to send, but it only allows the invocation of public methods.

class YetAnotherClass
  def public_method
    puts "Hello from public_method!"
  end

  private

  def private_method
    puts "This is a private method."
  end
end

obj = YetAnotherClass.new
obj.public_send(:public_method)  # Using public_send method


# These are the common ways to invoke methods in Ruby. Each method invocation style has its use case, and the choice often depends 
# on the specific requirements of your code, including whether you need to dynamically determine the method to call or whether 
# you want to restrict the invocation to public methods
