# What do you know about namespace and scoped routing?
#  What is the difference between both?


# Namespace and scoped routing are two different ways to organize and group routes in a Rails application.

# Namespace routing allows you to group related resources under a common namespace,
#  which can help make your application more organized and easier to maintain. 
#  It allows you to define a common prefix for all the routes within that namespace. 
#  For example, if you have a set of admin routes, you can namespace them under the 'admin' namespace like this:


namespace :admin do
    resources :posts
    resources :comments
  end
  
#   This will generate URLs like /admin/posts and /admin/comments for the respective resources.

#   Scoped routing, on the other hand, allows you to apply a specific scope to a set of routes. 
#   It allows you to define a scope that is applied to a group of routes, 
#   but without changing the URL itself. For example, 
#   if you have a set of user-specific routes, you can scope them under the 'user' scope like this:

scope '/user' do
    resources :posts
    resources :comments
  end

  
#   This will generate URLs like /user/posts and /user/comments for the respective resources, 
#   without changing the base URL of your application.

#   The key difference between namespace and scoped routing is that namespace routing changes the base URL of the application, 
#   whereas scoped routing applies a scope to a set of routes without changing the URL itself. 
#   Namespace routing is typically used to group resources that are related to a particular area or 
#   function of the application (e.g. admin resources), whereas scoped routing is typically used to group resources 
#   that are related to a particular user or context (e.g. user-specific resources).
  
#   In summary, namespace and scoped routing are both ways to organize and group routes in a Rails application. 
#   Namespace routing changes the base URL of the application and is typically used to group resources that are 
#   related to a particular area or function of the application. Scoped routing applies a scope to a set of routes 
#   without changing the URL itself and is typically used to group resources that are related to a particular user or context.