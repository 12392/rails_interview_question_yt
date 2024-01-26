# What do you mean by filter actions or controller callbacks? Explain.


# In Ruby on Rails, controller filters (also known as callbacks) are methods that are called at specific points during the processing 
# of an incoming HTTP request. Filters allow you to define behavior that should be executed before or after certain controller actions, 
# or in response to specific events that occur during the request processing cycle.

# There are four types of controller filters in Rails:

# before_action: 
# These filters are executed before the controller action is run.
#  They are typically used to perform setup or authorization tasks, 
#  such as checking user permissions or initializing instance variables.

# after_action: 
# These filters are executed after the controller action is run. 
# They are typically used to perform cleanup or logging tasks, 
# such as closing database connections or logging the results of the request.

# around_action: 
# These filters wrap the controller action with custom behavior.
#  They are typically used to modify the behavior of the controller action itself, 
#  or to handle errors or exceptions that may be raised during request processing.

# skip_before_action, skip_after_action, and skip_around_action:
# These methods allow you to skip specific filters for a particular action or set of actions.

# Here's an example of how you might use a before_action filter to check that a user is authorized to view a particular resource:


class PostsController < ApplicationController
    before_action :authorize_user
  
    def show
      @post = Post.find(params[:id])
    end
  
    private
  
    def authorize_user
      unless current_user && current_user.can_view_post?(params[:id])
        redirect_to login_path
      end
    end
  end
  

#   In this example, we define a before_action filter called authorize_user that checks 
#   whether the current user is authorized to view the requested post. If the user is not authorized, 
#   we redirect them to the login page. This filter is applied to the show action, which displays a single post.

# Overall, controller filters are a powerful tool in Rails that allow you to define custom behavior 
# that is executed before or after specific controller actions. By using filters, you can build more modular 
# and flexible controllers that are easier to maintain and customize over time.