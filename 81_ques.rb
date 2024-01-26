# What is the difference between Array and Enumerator in ruby?

# In Ruby, an Array and an Enumerator are both objects that deal with collections of elements, 
# but they serve different purposes and have different characteristics.

# Array:
# Definition: An Array is an ordered collection of elements. Each element in an array is identified by an index (position), 
# and you can access elements using these indices.

array = [1, 2, 3, 4, 5]

# Methods: Arrays come with a variety of built-in methods for manipulating and accessing their elements. 
# Common array methods include push, pop, shift, unshift, each, map, and more.

array.push(6)       # Add an element to the end
array.each { |e| puts e }

# Indexing: Elements in an array are accessed by their index.
puts array[2]  # Output: 3

# Enumerator:
# Definition: An Enumerator is an object that represents a sequence of values. 
# It doesn't store the values directly but produces them on demand. 
# Enumerators are often created using the each method, which returns an enumerator if no block is given.

enumerator = [1, 2, 3, 4, 5].each

# Methods: Enumerators provide methods like next to retrieve the next value in the sequence. 
# They also include Enumerable methods like map, select, each_with_index, etc., allowing you to perform operations on the underlying sequence.

puts enumerator.next  # Output: 1

# Lazy Evaluation: Enumerators use lazy evaluation, which means that they calculate and yield values only as needed. 
# This can be more memory-efficient than storing all elements in memory.

# Infinite Sequences: Enumerators can represent infinite sequences, making them suitable for scenarios where you need 
# to generate an endless stream of values.

# Differences:

# Storage:
# An Array stores all its elements in memory, while an Enumerator produces values on the fly without necessarily storing them in memory.

# Access:
# Array elements are accessed directly using indices, whereas Enumerator elements are obtained through methods like next.

# Methods:
# Arrays have a variety of built-in methods for working with their elements directly, while Enumerators 
# leverage methods from the Enumerable module to perform operations on the underlying sequence.

# Lazy Evaluation:
# Enumerators use lazy evaluation, making them suitable for handling large or infinite sequences more efficiently.

# In summary, an Array is a concrete collection of elements that you can access directly, 
# while an Enumerator represents a sequence of values that are generated on demand. 
# The choice between them depends on your specific use case and whether you need direct access 
# to the elements or a more flexible and memory-efficient way to handle sequences of values.
