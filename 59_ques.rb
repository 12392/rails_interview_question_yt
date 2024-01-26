# In Ruby, what is the difference between Strings and Symbols? Explain.

# In Ruby, both Strings and Symbols are used to represent sequences of characters, 
# but they serve different purposes and have distinct characteristics. Here are the key differences between Strings and Symbols:

# Strings:

# Mutable:
# Strings in Ruby are mutable, meaning their content can be changed after they are created.
# You can use methods like << or concat to modify a string in place.

str = "Hello"
str << ", World!"  # Modifies the original string

# Memory Usage:

# Strings are generally less memory-efficient compared to symbols.
# Each unique string has its own memory allocation.

str1 = "Hello"
str2 = "Hello"

# Use Cases:
# Strings are suitable for situations where the content may change, such as user input or dynamic data.
# They are often used for text processing, manipulation, and output.

name = "John"
greeting = "Hello, #{name}!"


Symbols:

# Immutable:
# Symbols are immutable, meaning their content cannot be changed after they are created.
# Once a symbol is created, it remains the same throughout the program's execution.

sym = :hello
sym.concat(" world")  # Raises an error, symbols are immutable

# Memory Usage:
# Symbols are more memory-efficient compared to strings.
# Each unique symbol has only one memory allocation, regardless of how many times it is used.

sym1 = :hello
sym2 = :hello

# Use Cases:
# Symbols are often used as identifiers, such as keys in hashes or method names.
# They are suitable for situations where the content is static and will not be modified.

person = { name: "John", age: 30 }

# Summary:
# Use Strings when you need a mutable sequence of characters and when the content may change.
# Use Symbols when you need an immutable identifier and when the content is static.
# Symbols are generally more memory-efficient because they are immutable and have unique memory allocations.

# In practice, symbols are commonly used as keys in hashes and for representing static identifiers, 
# while strings are used for variable data and situations where mutability is required. The choice between strings 
# and symbols depends on the specific use case and the nature of the data being represented.
