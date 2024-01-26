# What are scopes in Rails?


# Scopes in Ruby on Rails are a way to define a subset of database records that meet certain criteria. 
# They are similar to methods, but are defined within the model and return a query object that can be further modified or chained with other scopes, 
# relations or methods.

# Scopes can be defined using the scope method in the model class, like this:

class Post < ApplicationRecord
    scope :published, -> { where(published: true) }
    scope :by_author, -> (author) { where(author: author) }
end


# In this example, we have defined two scopes for the Post model. 
# The published scope returns all posts that are published, 
# while the by_author scope takes an argument of author and returns all posts that were written by that author.

# Scopes can also be chained with other scopes or methods to create more complex queries. 
# For example, we could chain the two scopes defined above to get all published posts by a particular author like this

Post.published.by_author('John')

# This would return all published posts written by the author named "John".

# Scopes are useful for several reasons:

# They can help to keep code more readable and maintainable by encapsulating complex queries into simple, descriptive methods.

# They can help to avoid duplication of code by allowing you to define common queries 
# in one place and reuse them across multiple parts of your application.

# They can improve the performance of your application by allowing you to retrieve only the records that you need, 
# rather than retrieving all records and then filtering them in Ruby.

# Overall, scopes are a powerful tool in Ruby on Rails that can make it easier to work with complex queries and 
# improve the performance and maintainability of your application.
