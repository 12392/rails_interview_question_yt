# What do you mean by N+1 query? How can you resolve N+1 query? 
# Explain by an example.


# An N+1 query is a common performance issue that occurs 
# when a database query results in additional queries being executed for each record returned. 
# For example, if you have a query that retrieves a list of posts, 
# and then you execute an additional query to retrieve the author of each post, 
# you would have N+1 queries, where N is the number of posts returned by the initial query.

# Here's an example of an N+1 query:

@posts = Post.all
@posts.each do |post|
  puts post.author.name
end



# In this code, we first retrieve all the posts from the database using Post.all. 
# Then, we loop through each post and retrieve the name of the author for each post using post.author.name. 
# This results in an additional query being executed for each post to retrieve the author's name, leading to N+1 queries.

# To resolve N+1 queries, we can use eager loading. Eager loading retrieves all necessary associated records in a single query, 
# reducing the number of queries executed. In Rails, we can use the includes method to eager load associations:

@posts = Post.includes(:author)
@posts.each do |post|
  puts post.author.name
end

# In this code, we use the includes method to eager load the author association for each post. 
# This results in only two queries being executed: one to retrieve all the posts and another to retrieve all the authors for those posts. 
# This approach is much more efficient than executing an additional query for each post.

# Overall, resolving N+1 queries can have a significant impact on the performance of your Rails application, 
# particularly when working with large datasets. 
# By using eager loading, you can reduce the number of queries executed and improve the efficiency of your code.
