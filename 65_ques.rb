# What is the advantage of using hash over an array in Ruby ?

# In Ruby, both arrays and hashes are data structures that allow you to store and organize collections of values. 
# Each has its own advantages and use cases, and the choice between them depends on the specific requirements of your program. 
# Here are some advantages of using a hash over an array:

# Key-Value Pairing:
# The primary advantage of a hash is its ability to store data as key-value pairs. Each value in a hash is associated with a unique key,
# providing a convenient way to access and retrieve data based on meaningful identifiers.

user = { "name" => "John", "age" => 30, "city" => "New York" }
puts user["name"]  # Accessing value using key

# Fast Lookups:
# Hashes provide constant-time (O(1)) lookup for values based on keys. This makes them efficient 
# for situations where you need to quickly access data using a known identifier.

# O(1) lookup
user_age = user["age"]

# Associative Nature:
# Hashes are inherently associative data structures, making them suitable for modeling relationships between entities. 
# For example, representing a set of properties for an object.

car = { "brand" => "Toyota", "model" => "Camry", "year" => 2022 }

# Flexibility in Key Types:
# Hash keys can be of any data type, including symbols, strings, numbers, or other objects. 
# This flexibility allows you to use meaningful keys for different types of data.

person = { name: "Alice", age: 25, city: "London" }

# Sparse Data:
# Hashes are efficient for representing sparse data where only a subset of possible keys have associated values. 
# This allows you to use memory more efficiently compared to an array where you might need to allocate memory for potentially unused indices.

sparse_data = { 1 => "one", 1000 => "thousand" }

# Named Parameters:
# Hashes are often used to simulate named parameters in method calls, allowing you to pass a variable number of arguments with meaningful labels.

def greet(options)
  puts "Hello, #{options[:name]}! You are #{options[:age]} years old."
end

greet(name: "John", age: 30)

# In contrast, arrays are more suitable when dealing with ordered collections of elements and when the position of an element 
# in the collection is significant.

colors = ["red", "green", "blue"]
puts colors[0]  # Accessing element by index

# In summary, the advantage of using a hash over an array in Ruby lies in its ability to associate values with meaningful keys, 
# providing fast and efficient lookups, flexibility in key types, and suitability for modeling relationships and sparse data. 
# The choice between a hash and an array depends on the nature of your data and the operations you need to perform.
