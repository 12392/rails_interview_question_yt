# What do you mean by STI(single table inheritance)? What are its advantages and disadvantages?

# STI, or Single Table Inheritance, is a design pattern used 
# in object-oriented programming where multiple classes share the same database table. 
# In Rails, STI is implemented using a single model with a type attribute that specifies the subclass of the model.

# Advantages of STI:

# Saves database space: 
# By using STI, you can avoid creating separate tables 
# for each subclass, reducing the number of database tables required.

# Simplicity:
# STI allows you to keep all related data in a single table, 
# making your code simpler and easier to maintain.

# Faster database queries: 
# Since all subclasses share the same table, 
# querying the table becomes faster as you can use a single query instead of multiple queries to fetch data from different tables.

# Disadvantages of STI:

# Inflexibility: 
# STI can become inflexible when it comes to schema changes. 
# Adding a new column to the table means that all subclasses will be required to implement that column, 
# even if it's not needed for some of the subclasses.

# Increased complexity: 
# As the application grows, it can become difficult to manage and maintain the single table with many subclasses, 
# leading to a more complex and hard-to-understand codebase.

# Reduced performance for large datasets: 
# STI can lead to reduced performance when working with large datasets,
#  as all subclasses share the same table, making it harder to optimize queries for specific subclasses.

# In summary, STI can be a useful pattern to simplify your code and save database space,
#  but it can also become inflexible and complex as the application grows. When using STI, 
#  it's important to consider the tradeoffs carefully and ensure that the pattern fits the specific needs of your application.