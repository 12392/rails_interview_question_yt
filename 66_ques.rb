# What do you mean by meta Programming in Ruby? Explain how you can implement this in your program?

# Metaprogramming in Ruby refers to the ability of a program to manipulate or introspect its own structure and behavior at runtime. 
# In other words, it involves writing code that generates or modifies code dynamically. 
# Ruby provides a powerful and flexible set of features that enable metaprogramming, allowing developers to write more expressive and concise code.

# Key Metaprogramming Features in Ruby:

# Dynamic Code Execution:
# Ruby allows you to execute code dynamically using methods like eval and instance_eval. 
# This enables you to generate and execute code at runtime.
code = "puts 'Hello, metaprogramming!'"
eval(code)

# Define Method Dynamically:
# You can dynamically define methods in a class using the define_method method, allowing you to generate methods based on certain conditions 
# or parameters.

class MyClass
    define_method :dynamic_method do |value|
    puts "Dynamic method with value: #{value}"
    end
end

obj = MyClass.new
obj.dynamic_method("Hello")

# Open Classes and Modules:
# Ruby allows you to reopen existing classes and modules to add or modify methods. This is often referred to as "monkey patching."

class String
    def reverse_upcase
    reverse.upcase
    end
end

puts "hello".reverse_upcase

# Method Missing:
# The method_missing method is invoked when a method is called on an object that the object doesn't respond to. This can be used for handling dynamic method calls.

class DynamicClass
    def method_missing(name, *args)
    puts "Dynamic method #{name} called with arguments #{args}"
    end
end

obj = DynamicClass.new
obj.dynamic_method("Hello")

# Reflection:
# Ruby provides reflection mechanisms that allow you to introspect the structure of classes and objects. For example, you can use class, methods, and instance_variables to obtain information about a class or object.

class MyClass
    attr_accessor :name, :age
end

obj = MyClass.new
obj.name = "John"
obj.age = 30

puts obj.class        # MyClass
puts obj.methods      # List of methods
puts obj.instance_variables  # List of instance variables

# Example of Metaprogramming:
# Let's create a simple metaprogramming example using define_method to dynamically define getter and setter methods for instance variables:

class DynamicClass
    attr_accessor :name, :age

    def self.create_accessor(*attributes)
    attributes.each do |attribute|
        define_method(attribute) do
        instance_variable_get("@#{attribute}")
        end

        define_method("#{attribute}=") do |value|
        instance_variable_set("@#{attribute}", value)
        end
    end
    end
end

DynamicClass.create_accessor(:name, :age)

obj = DynamicClass.new
obj.name = "Alice"
obj.age = 25

puts obj.name  # "Alice"
puts obj.age   # 25

# In this example, the create_accessor method dynamically generates getter and setter methods for the specified attributes (:name and :age). 
# This is a basic illustration of how metaprogramming can be used to reduce boilerplate code and make the code more concise.

# Considerations and Best Practices:

# Clarity and Readability:
# While metaprogramming can be powerful, it can also make code less readable and harder to understand. Use metaprogramming judiciously, and prioritize clarity.

# Avoid Overuse:
# Overusing metaprogramming can lead to code that is difficult to maintain and debug. Consider simpler alternatives when appropriate.

# Security Concerns:
# Be cautious with user input or external data when using features like eval, as they can pose security risks if not handled carefully.

# Documentation:
# Clearly document any metaprogramming techniques used in your code to help others understand the dynamic behavior.

# Metaprogramming can be a powerful tool when used appropriately, providing a flexible and expressive way to write code. 
# However, it should be employed judiciously, considering factors like readability, maintainability, and security.
