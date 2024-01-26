# What is the difference between uniq and distinct in rails?

# In Rails, both `uniq` and `distinct` are used to retrieve unique records from a collection or a database query, 
# but they are associated with different contexts and methods.

### `uniq`:

#### Array Method:
# - In the context of an array, `uniq` is a method used to remove duplicate elements and return a new array with unique elements.

  ruby
  array = [1, 2, 3, 1, 2, 4, 5]
  unique_array = array.uniq
  puts unique_array
  # Output: [1, 2, 3, 4, 5]
  

#### ActiveRecord Method:
# - In the context of ActiveRecord queries, `uniq` is used to specify that the query should return unique records 
#   based on the specified attribute(s).

  ruby
  # Example: Retrieve unique users based on the 'name' attribute
  unique_users = User.select(:name).uniq
  

### `distinct`:

# - `distinct` is typically used in the context of ActiveRecord queries to retrieve distinct (unique) records from a database table.

  ruby
  # Example: Retrieve distinct names from the 'users' table
  distinct_names = User.distinct.pluck(:name)
  

#   In this example, `distinct` is used in combination with `pluck` to retrieve distinct names from the 'users' table.

# ### Key Differences:

# 1. **Method Type:**
#    - `uniq` is both an array method and an ActiveRecord query method.
#    - `distinct` is primarily an ActiveRecord query method used for database queries.

# 2. **Usage in Arrays:**
#    - `uniq` is used to remove duplicate elements from an array.
#    - `distinct` is not typically used in the context of arrays.

# 3. **Usage in ActiveRecord Queries:**
#    - `uniq` is used in ActiveRecord queries to specify uniqueness based on certain attributes.
#    - `distinct` is used in ActiveRecord queries to explicitly request distinct records based on the entire row.

ruby
# Example: Using uniq in ActiveRecord query
unique_users = User.select(:name).uniq

# Example: Using distinct in ActiveRecord query
distinct_users = User.distinct


# In summary, while both `uniq` and `distinct` are used to obtain unique records, `uniq` 
# is more versatile as it can be used both with arrays and ActiveRecord queries for specific attributes. 
# On the other hand, `distinct` is more specialized for retrieving distinct records from a database table and is commonly used 
# in ActiveRecord queries.
