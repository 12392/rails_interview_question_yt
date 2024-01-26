# What do you mean by ActiveRecord callbacks? 
# Explain some ActiveRecord callbacks.

# ActiveRecord callbacks are methods that are automatically invoked at specific points during the lifecycle of an ActiveRecord object. 
# They allow you to execute code before or after certain events occur, such as when an object is created, updated, or destroyed.

# Some of the most commonly used ActiveRecord callbacks include:

# before_validation and after_validation: 
# These callbacks are triggered when an object is about to be validated, and after it has been validated, 
# respectively. They are often used to set default values or perform additional validation checks.

# before_save and after_save: 
# These callbacks are triggered before and after an object is saved to the database. 
# They are often used to perform additional processing on the object before it is saved, 
# or to perform related actions, such as creating associated records.

# before_create and after_create: 
# These callbacks are triggered before and after an object is created. 
# They are often used to set default values, generate a unique identifier, 
# or perform related actions such as sending a notification email.

# before_update and after_update: 
# These callbacks are triggered before and after an object is updated. 
# They are often used to perform additional processing on the object before it is updated, 
# or to perform related actions, such as updating associated records.

# before_destroy and after_destroy: 
# These callbacks are triggered before and after an object is destroyed. 
# They are often used to perform related actions, such as deleting associated records or sending a notification email.

# Callbacks can be defined either at the class level, 
# using before_* and after_* method calls, or at the instance level, 
# using *_callback method calls. For example:


class Post < ApplicationRecord
    before_save :normalize_title
  
    private
  
    def normalize_title
      self.title = title.downcase
    end
end
  



# In this example, we are defining a before_save callback that normalizes the title of a Post object by downcasing it.

# ActiveRecord callbacks are a powerful tool for customizing the behavior of your models 
# and executing code at specific points during the lifecycle of an object. However, 
# they can also make your code more difficult to understand and maintain 
# if used improperly, so it's important to use them judiciously and keep their effects on the overall behavior of your application in mind.