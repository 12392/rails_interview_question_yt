# What do you mean by mailers? How many ways to pass arguments to a mailer?


# In Rails, mailers are classes that are used to send email messages from your application. 
# Mailers are defined in the app/mailers directory and inherit from ActionMailer::Base. Mailers typically contain methods 
# that define the content and formatting of the email messages, and use templates to generate the actual email content.

# There are three ways to pass arguments to a mailer method in Rails:

# Method arguments: You can pass arguments to a mailer method just like you would with any other Ruby method. For example:

def welcome_email(user)
    @user = user
    mail(to: user.email, subject: 'Welcome to MyApp!')
  end
 
  
# In this example, the user argument is passed to the welcome_email method, 
# which sets an instance variable @user that is then used in the email template.

# Instance variables: You can also set instance variables in the mailer class 
# that can be used in the email template. For example:  

class UserMailer < ApplicationMailer
    def welcome_email(user)
      @user = user
      mail(to: user.email, subject: 'Welcome to MyApp!')
    end
  
    private
  
    def set_sender
      @sender = 'support@myapp.com'
    end
  end


# In this example, the set_sender method sets an instance variable @sender that is then used in the email template.

# Hash arguments: You can pass additional arguments to the mail method using a hash. 
# These arguments are used to set options such as the email subject, recipients, and formatting. For example:
 
def welcome_email(user, from:)
    @user = user
    mail(to: user.email, subject: 'Welcome to MyApp!', from: from)
  end

  
#   In this example, the from argument is passed as a hash argument to the welcome_email method,
#    and is then used as the sender of the email message.

# Using these different ways to pass arguments to a mailer method can help you to customize the content 
# and formatting of your email messages, and to make your code more modular and reusable.