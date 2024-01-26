# Explain routing in rails

# In Ruby on Rails, routing refers to the process of mapping incoming HTTP requests to specific controller actions 
# in your application. Routing is a critical component of any web framework, as it provides a way 
# for users to interact with your application by navigating to specific URLs and triggering specific behaviors.

# Rails uses a routing DSL (domain-specific language) to define your application's routes. 
# The routes are defined in the config/routes.rb file, which is loaded when your Rails application starts up. 
# Here's an example of a simple route definition:

Rails.application.routes.draw do
    get '/hello', to: 'greetings#hello'
  end


#   In this example, we define a route that maps the URL /hello to the hello action in the greetings controller. 
#   The get method specifies that this route should be triggered by an HTTP GET request.

# Routes can also have parameters, which are specified using a colon followed by the parameter name:


Rails.application.routes.draw do
    get '/users/:id', to: 'users#show'
  end
  

#   In this example, we define a route that maps URLs of the form /users/:id to the show action in the users controller. 
#   The :id parameter will be passed as a parameter to the show action.

# Routes can also be nested, which allows you to create more complex URL structures:

Rails.application.routes.draw do
    resources :posts do
      resources :comments
    end
  end

#   In this example, we define a set of nested routes that map to CRUD (create, read, update, delete) actions for posts and comments.
#    The resulting URLs might look something like /posts/1/comments/2/edit.

# Overall, routing is a powerful and flexible feature of Ruby on Rails that allows you to create a wide range of
#  URL structures and behaviors in your application. By mapping incoming requests to specific controller actions, you can build a rich and
#   interactive user experience that responds to user input and delivers the right content at the right time.
  