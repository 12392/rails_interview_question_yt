# What do you mean by inject method in Ruby?

# In Ruby, the inject method is an enumerable method that is often used for accumulating or reducing a collection (e.g., an array) 
# to a single value through iteration. It is also known as reduce. The inject method takes an initial value and a block, and 
# it applies the block sequentially to each element of the collection, updating the accumulator with the result of each iteration.

# The basic syntax of inject is as follows:

collection.inject(initial) { |accumulator, element| block }

# collection: The enumerable collection (e.g., an array) on which inject is called.
# initial: The initial value of the accumulator.
# accumulator: The accumulated result.
# element: The current element of the collection being processed.
# block: The block of code that defines the operation to be performed on each element.

# Here's a simple example of using inject to find the sum of an array:

numbers = [1, 2, 3, 4, 5]
sum = numbers.inject(0) { |acc, num| acc + num }
puts sum
# Output: 15

# In this example, inject(0) sets the initial value of the accumulator (acc) to 0. 
# The block { |acc, num| acc + num } is then applied to each element of the array, updating the accumulator with the sum of the elements.

# Alternative Syntax:
# The block passed to inject can be simplified using the &:+ shorthand for addition:

numbers = [1, 2, 3, 4, 5]
sum = numbers.inject(0, :+)
puts sum
# Output: 15

# Practical Use Cases:

# Summation:
numbers = [1, 2, 3, 4, 5]
sum = numbers.inject(0) { |acc, num| acc + num }

# Product:
numbers = [1, 2, 3, 4, 5]
product = numbers.inject(1) { |acc, num| acc * num }

# Finding the Maximum Value:
numbers = [1, 7, 3, 9, 2]
max = numbers.inject { |acc, num| acc > num ? acc : num }

# String Concatenation:
words = ["Hello", " ", "World"]
sentence = words.inject("") { |acc, word| acc + word }

# The inject method is powerful and flexible, and it can be applied to a variety of scenarios where you need to accumulate 
# or reduce a collection to a single value. It's worth noting that inject can be replaced with reduce, as they are synonymous in Ruby.
