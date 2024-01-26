# How can you implement user authentication using devise and JWT? Explain the process of it.



# Devise is a popular gem for implementing user authentication in Rails applications, 
# while JWT (JSON Web Tokens) is a standard for securely transmitting data between parties. 
# JWT allows you to authenticate users and securely transmit data between the client and 
# the server without requiring session storage on the server.

# To implement user authentication using Devise and JWT, you can follow these steps:

# Add Devise and JWT to your Gemfile and run bundle install:

gem 'devise'
gem 'jwt'

# Generate a User model and run the Devise installation generator:

rails generate devise:install
rails generate devise User

# Generate a JWT authentication service:

rails generate service Auth

# Define a method in the Auth service to generate a JWT:

require 'jwt'

class AuthService
  def self.encode(payload)
    JWT.encode(payload, Rails.application.secrets.secret_key_base)
  end
end

# Add a JWT token to the response headers in the Devise sessions controller:
class Users::SessionsController < Devise::SessionsController
    def create
      super do |user|
        token = AuthService.encode({ user_id: user.id })
        response.set_header('Authorization', "Bearer #{token}")
      end
    end
  end
  


#   Define a method in the Auth service to authenticate a user:

  class AuthService
    def self.authenticate(token)
      payload = AuthService.decode(token)
      return nil unless payload
      User.find_by(id: payload['user_id'])
    end
  end

#   Add an authentication check to the relevant controller actions:

  class PostsController < ApplicationController
    before_action :authenticate_user!
  
    def index
      @posts = Post.all
      render json: @posts
    end
  end

  
#   In this example, the authenticate_user! method is provided by Devise to ensure that the user is logged in and has a valid session.

# By following these steps, you can implement user authentication using Devise and JWT in your Rails application. 
# This approach provides a secure and efficient way to authenticate users and transmit data between the client and the server.
  

