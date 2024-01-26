# Is it possible to use two identical keys in a hash? What happens if you use two identical keys in a hash?

# In Ruby, a hash is a collection of key-value pairs, and each key within a hash must be unique. 
# If you attempt to use two identical keys in a hash, the second occurrence will overwrite the value associated with the first occurrence. 
# The hash will effectively have only one entry for that key, and its value will be the one set during the last assignment.

# Here's an example to illustrate this behavior:

hash = { "name" => "John", "age" => 30, "name" => "Jane" }

puts hash
# Output: {"name"=>"Jane", "age"=>30}

# In this example:
# The hash is initially created with three key-value pairs.
# The key "name" is used twice.
# The second occurrence of "name" => "Jane" overwrites the value associated with the first occurrence "name" => "John".
# As a result, the final state of the hash has only one entry for the key "name", and its value is "Jane".

# It's important to note that while Ruby allows you to define a hash with duplicate keys, 
# doing so is not considered good practice because it can lead to unexpected behavior and may make the code more error-prone. 
# It's generally recommended to ensure unique keys within a hash to maintain clarity and avoid unintentional overwriting of values. 
# If you need to associate multiple values with a single key, consider using nested data structures or an array of values as the hash value.
