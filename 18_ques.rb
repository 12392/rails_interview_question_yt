# What do you mean by member and collection routes? Explain.

# member actions --> show, edit, update, destroy

# collection actions --> index, new, create


# In Rails, routes are used to map incoming requests to controller actions. 
# There are two types of routes that can be defined in Rails: member routes and collection routes.

# A member route is a route that is defined for a specific member of a resource. 
# For example, if you have a resource called Post, a member route might be defined for a specific post with an ID of 1:

resources :posts do
    member do
      get 'preview'
    end
  end

  
# This route maps the URL /posts/1/preview to the preview action of the PostsController, and passes the ID of the post (1) as a parameter.

# Member routes are useful when you need to define routes that are specific to a single member of a resource. 
# For example, you might use a member route to display a preview of a post, or to allow users to like or comment on a specific post.

# A collection route, on the other hand, is a route that is defined for a collection of resources. 
# For example, if you have a resource called Post, a collection route might be defined for all posts:

resources :posts do
    collection do
      get 'popular'
    end
  end
  
#   This route maps the URL /posts/popular to the popular action of the PostsController, and does not require an ID parameter.

#   Collection routes are useful when you need to define routes that apply to all members of a resource. 
#   For example, you might use a collection route to display a list of popular posts, or to allow users to search for posts based on specific criteria.
  
#   In summary, member routes and collection routes are both types of routes that can be defined in Rails. 
#   Member routes are used to define routes that are specific to a single member of a resource, 
#   while collection routes are used to define routes that apply to all members of a resource. 
#      using member and collection routes appropriately, you can create a well-structured and easy-to-use API for your Rails application. 