# What are the Relational and Conditional callbacks in ActiveRecord? Explain them.

# In ActiveRecord, callbacks are methods that are executed at certain points in the lifecycle of an ActiveRecord object. 
# There are several types of callbacks available, but two of the most commonly used are relational and conditional callbacks.

# Relational callbacks are callbacks that are triggered by changes to related objects. 
# For example, you might use a relational callback to automatically update a counter cache when a child object is created or deleted. 
# Some common relational callbacks include after_add, after_remove, and after_touch.

# The after_add callback is triggered when a new object is added to a has_many or has_and_belongs_to_many association. 
# For example, you might use this callback to update a counter cache on the parent object:


class Post < ApplicationRecord
    has_many :comments, after_add: :increment_comments_count
    
    def increment_comments_count(comment)
      self.update_attribute(:comments_count, self.comments_count + 1)
    end
end


# In this example, the increment_comments_count method is called every time a new comment is added to a post, 
# and it updates the comments_count attribute on the post.

# Conditional callbacks are callbacks that are triggered only when certain conditions are met. 
# For example, you might use a conditional callback to send an email notification only if a certain attribute on the object has changed. 
# Some common conditional callbacks include before_save, before_create, and before_validation.

# The before_save callback is triggered before an object is saved to the database. 
# For example, you might use this callback to update a timestamp attribute on the object only if certain conditions are met:


class Article < ApplicationRecord
    before_save :update_published_at, if: :published_changed?
    
    def published_changed?
      self.published_changed?
    end
    
    def update_published_at
      self.published_at = Time.zone.now
    end
end


# In this example, the update_published_at method is called before an article is saved, but only if the published attribute has changed. 
# This ensures that the published_at attribute is updated only when the article is first published.

# Overall, relational and conditional callbacks are powerful tools for adding functionality to your ActiveRecord models. 
# By using them wisely, you can automate common tasks and make your code more readable and maintainable.
  