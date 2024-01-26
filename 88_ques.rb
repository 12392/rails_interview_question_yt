# Is it possible to send emails without rendering a template in Rails? If yes, how will you do this?

# Yes, it is possible to send emails in Rails without rendering a template. Rails provides a way to send plain text or HTML emails 
# directly from your code without using a view template. You can use the mail method along with the deliver method to achieve this.

# Here's an example of sending a plain text email without rendering a template:
class UserMailer < ApplicationMailer
  def custom_email(user, content)
    mail(to: user.email, subject: 'Custom Subject') do |format|
      format.text { render plain: content }
    end
  end
end

# In this example:
# The custom_email method is defined in the UserMailer class, which inherits from ApplicationMailer.
# The mail method is used to specify the email details such as the recipient (to), the subject of the email (subject), and other options.
# The block passed to mail sets the email content format. In this case, it uses format.text and 
# renders plain text content using the render plain: content statement.
# The deliver method is then called to actually send the email.

# Here's an example of sending an HTML email without rendering a template:
class UserMailer < ApplicationMailer
  def custom_email(user, content)
    mail(to: user.email, subject: 'Custom Subject') do |format|
      format.html { render html: content.html_safe }
    end
  end
end

# In this example, the format.html block is used to render HTML content directly. 
# The html_safe method is used to indicate that the content is safe HTML and should not be escaped.

# You can then call this method in your controller or other parts of your application:

UserMailer.custom_email(user, "Hello, this is a custom email content.").deliver_now
# Make sure to customize the email content and structure according to your requirements. 
# Sending emails without rendering a template can be useful in scenarios where the content is dynamically generated 
# in your code or where you want full control over the email's content.





