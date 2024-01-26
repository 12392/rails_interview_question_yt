# When do you think is the right time to define a helper method inside a controller in Rails?

# In Rails, helper methods inside controllers are often used to encapsulate reusable logic that is specific to a particular controller. 
# The decision to define a helper method inside a controller depends on factors such as code organization, reusability, 
# and the nature of the logic involved. Here are some considerations:

# Code Reusability:
# If a certain piece of logic is specific to a particular controller and is reused in multiple actions within that controller,
# it might make sense to extract that logic into a helper method. This promotes DRY (Don't Repeat Yourself) principles.

# Readability and Maintainability:
# If a controller action becomes too complex or contains a significant amount of logic, moving some of that logic into 
# helper methods can improve the readability and maintainability of the code. 
# It makes the controller actions more focused on handling HTTP requests and responses.

# Conditional Logic:
# If there are conditional statements or branching logic that is repeated across multiple controller actions, 
# extracting that logic into a helper method can make the controller code cleaner and more modular.

# View Logic:
# Sometimes, helper methods in controllers are used to encapsulate logic that is closely related to the view layer.
# However, it's important to be cautious with this approach, as the primary responsibility of a controller is to handle the 
# interaction between the model and the view.

# Callback Methods:
# Controller callback methods, such as before_action and after_action, are a form of helper methods that are executed before or 
# after certain controller actions. These are commonly used for tasks like authentication, authorization, or setting up instance variables.

# Example:

class UsersController < ApplicationController
    before_action :authenticate_user, only: [:edit, :update]

    def index
    @users = User.all
    end

    def show
    @user = User.find(params[:id])
    end

    def edit
    # Some logic related to editing users
    end

    def update
    # Some logic related to updating users
    end

    private

    def authenticate_user
    # Logic for user authentication
    end
end
# In this example:

# authenticate_user is a callback method defined as a private helper method. It is invoked before the edit and update actions.
# edit and update actions might share some common authentication logic, so it's extracted into a helper method for reuse.

# While defining helper methods in controllers can be beneficial for certain scenarios, 
# it's essential to strike a balance and avoid turning controllers into dumping grounds for unrelated logic. 
# If the logic is more general-purpose and reusable across multiple controllers, consider placing 
# it in a separate module or service object. Always keep the Single Responsibility Principle in mind when organizing code
