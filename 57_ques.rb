# What is the difference between Hash and HashWithIndifferentAccess?

# In Ruby on Rails, HashWithIndifferentAccess is a class that extends the basic Hash class. 
# The primary difference between the two lies in how they handle keys: Hash keys are compared using strict equality (==), 
# while HashWithIndifferentAccess keys are compared in a case-insensitive manner.

# Hash:
# Key Comparison: In a regular Hash, keys are compared using strict equality. This means that keys must match exactly for lookups to work.

hash = { "name" => "John" }
puts hash["name"]   # "John"
puts hash[:name]     # nil, because the keys are different

# HashWithIndifferentAccess:
# Key Comparison: In HashWithIndifferentAccess, keys are compared in a case-insensitive manner. 
# This means that string and symbol keys are considered equivalent.

hash_with_indifferent_access = ActiveSupport::HashWithIndifferentAccess.new({ "name" => "John" })
puts hash_with_indifferent_access["name"]   # "John"
puts hash_with_indifferent_access[:name]    # "John", because the keys are considered equivalent

# Use Case: HashWithIndifferentAccess is often used in Rails to handle parameters coming from the web, 
# where keys may be provided as strings or symbols in HTML forms or JSON requests. This allows for more flexible and forgiving key handling.

params = ActiveSupport::HashWithIndifferentAccess.new({ "name" => "John" })
puts params["name"]   # "John"
puts params[:name]     # "John", because the keys are considered equivalent

# Considerations:
# Compatibility: If you are working in a Rails environment, HashWithIndifferentAccess can be convenient for handling parameters 
# where keys may come in different formats.

# Performance: Keep in mind that using HashWithIndifferentAccess may have a slightly higher memory overhead compared to a 
# standard Hash due to additional processing for key comparison.

# Compatibility with Libraries: Some Ruby libraries and code may assume standard Hash behavior, 
# so be cautious when using HashWithIndifferentAccess in contexts outside of Rails.

# In conclusion, the main difference is in how keys are compared—Hash uses strict equality, 
# while HashWithIndifferentAccess considers keys equivalent regardless of case. Choose the one that best fits your requirements 
# based on the specific use case and the source of your data.
