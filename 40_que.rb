# How can you handle ActiveRecord::RecordNotFound exception for all resources?

# In Ruby on Rails, you can handle the ActiveRecord::RecordNotFound exception globally 
# using a rescue_from block in your application controller.

# Here's an example of how to handle this exception for all resources:

class ApplicationController < ActionController::Base
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  
    private
  
    def record_not_found
      render json: { error: 'Record not found' }, status: :not_found
    end
  end

#   In this example, we define a private method record_not_found that returns a
#    JSON response with an error message and a status code of 404 (not found). We then use the rescue_from method
#     to register this method as the handler for the ActiveRecord::RecordNotFound exception.

# By defining this exception handler in your application controller, you can ensure that all controllers 
# in your application will handle ActiveRecord::RecordNotFound exceptions in the same way. This can help to ensure 
# a consistent user experience and make it easier to maintain and customize your application over time.
  