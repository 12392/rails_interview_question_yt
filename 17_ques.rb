# What are transactional callbacks? Explain them

# Transactional callbacks are a type of callback in ActiveRecord that are executed within a database transaction. 
# A database transaction is a series of database operations that are treated as a single unit of work. 
# If any of the operations fail, the entire transaction is rolled back and none of the changes are saved to the database. 
# This ensures that the database remains in a consistent state and that data is not lost or corrupted.

# Transactional callbacks are useful when you need to perform multiple database operations as part of a single task, 
# and you want to ensure that all of the operations succeed or fail together. 
# For example, you might use a transactional callback to update multiple records in a single operation, 
# or to send a notification email only if all of the changes have been successfully saved to the database.

# There are two types of transactional callbacks in ActiveRecord: before_commit and after_commit.

# The before_commit callback is triggered before the transaction is committed to the database. 
# This allows you to perform any necessary operations before the changes are saved to the database. 
# For example, you might use this callback to perform a validation check before saving the record:

class User < ApplicationRecord
    before_commit :validate_user, on: :create
    
    def validate_user
      if self.email.present? && User.exists?(email: self.email)
        raise ActiveRecord::Rollback, "User with this email already exists"
      end
    end
end


# In this example, the validate_user method is called before a new user record is saved to the database. 
# If the email address is already in use by another user, the transaction is rolled back and the new user record is not saved.

# The after_commit callback is triggered after the transaction has been committed to the database. 
# This allows you to perform any necessary operations after the changes have been saved to the database. 
# For example, you might use this callback to send a notification email after a record has been successfully saved:
 

class User < ApplicationRecord
    after_commit :send_notification_email, on: :create
    
    def send_notification_email
      UserMailer.notification_email(self).deliver_later
    end
end


# In this example, the send_notification_email method is called after a new user record has been saved to the database. 
# The email is sent asynchronously using the deliver_later method to avoid blocking the main thread.

# Overall, transactional callbacks are a powerful tool for managing complex database operations in ActiveRecord. 
# By using them wisely, you can ensure that your database remains in a consistent state and that your code is robust and maintainable.
  