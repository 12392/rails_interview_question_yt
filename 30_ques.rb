# Do you know about ActiveStorage? 
# How can you use this?


# To use ActiveStorage in your Rails application, 
# you first need to enable it by running the following command in your terminal:

rails active_storage:install


# This command generates a migration that creates the necessary tables 
# for storing files in your application's database.

# Once ActiveStorage is installed, you can add file attachments to your models 
# by adding a has_one_attached or has_many_attached method to your model.
# For example, the following code adds a file attachment to a user model:

class User < ApplicationRecord
    has_one_attached :avatar
  end
  


# You can then upload files to your model using the attach method provided by ActiveStorage.
# For example, the following code uploads an image to a user's avatar:

user = User.find(1)
user.avatar.attach(io: File.open('/path/to/avatar.jpg'), filename: 'avatar.jpg', content_type: 'image/jpeg')



# You can also retrieve and display the attached file using the url method provided by ActiveStorage. 
# For example, the following code displays a user's avatar in a view:

<%= image_tag user.avatar.url %>


# ActiveStorage also provides a number of features for working with files, 
# such as resizing and transforming images, generating previews of documents, and processing video and audio files.

# Overall, ActiveStorage is a powerful and flexible library for managing file uploads in a Rails application, 
# and can greatly simplify the process of working with files and attachments.




