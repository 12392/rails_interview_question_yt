# Explain strong parameters. in ruby on rails

# Strong Parameters is a security feature in Ruby on Rails that was introduced
#  to prevent mass-assignment vulnerabilities in your Rails application. The mass-assignment vulnerability occurs 
# when an attacker submits malicious data to your application's form, 
#     which can allow them to modify attributes that they are not supposed to.

# The Strong Parameters feature provides a way to whitelist the parameters that can be accepted by your application, 
# and rejects all other parameters that are not explicitly permitted. It is implemented in a controller 
# using the params method, which returns a sanitized hash of the parameters submitted in the request.

# To use Strong Parameters, you need to define a whitelist of the parameters that can be accepted by your application, 
# and reject all other parameters that are not permitted. You can define this whitelist using the permit method,
#  which is called on a params object.

# For example, the following code shows how to permit a name and email parameter for a User model:


class UsersController < ApplicationController
    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to @user
      else
        render 'new'
      end
    end
  
    private
      def user_params
        params.require(:user).permit(:name, :email)
      end
  end


#   In this example, the user_params method is defined as a private method in the UsersController, 
#   and it whitelists the name and email parameters for a User model. The params.require(:user) method specifies
#    that the parameters should be submitted under the user key in the request, and the permit method specifies 
#   the individual parameters that are permitted.

# If any other parameters are submitted in the request that are not explicitly permitted, 
# they will be rejected and not included in the user_params hash.

# Overall, Strong Parameters is an important security feature in Rails 
# that helps prevent mass-assignment vulnerabilities in your application, and
#  it is important to use it whenever you are working with user-submitted data in your Rails application
  