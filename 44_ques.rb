# How can you pass params to a mailer action?

# In Ruby on Rails, you can pass parameters to a mailer action in the same way you would pass them to a controller action, 
# using the method parameters. Here's an example:

class UserMailer < ApplicationMailer
    def welcome_email(user, message)
      @user = user
      @message = message
      mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
  end
  

#   In this example, the welcome_email method takes two parameters: user and message. 
#   You can call this method and pass in values for these parameters like this:

  UserMailer.welcome_email(current_user, "Hello, welcome to my site!").deliver_now


# Here, current_user is a variable containing the user you want to send the email to, and "Hello, welcome to my site!" 
# is the message you want to include in the email.

# In the mailer view file, you can then use the instance variables @user and @message to populate the email's content. For example:

<p>Hi <%= @user.name %>,</p>

<p><%= @message %></p>

<p>Thanks for signing up for My Awesome Site!</p>


# In summary, you can pass parameters to a mailer action just like you would to a controller action, 
# and then use them to populate the email's content in the mailer view file
