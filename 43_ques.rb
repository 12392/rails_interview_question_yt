# What is the difference between save and save!?

# In Ruby on Rails, save and save! are methods used to save a record to the database. 
# The main difference between them is how they handle validation errors.

# save is a non-destructive method. If validation fails when you call save, it will return false, 
# but the record will still be available for further modification. For example:

@user = User.new(name: 'John')
@user.save # => false
@user.errors.full_messages # => ["Email can't be blank"]


# ere, save returns false because the email attribute is required, 
# but the @user object is still available for further modification.

# On the other hand, save! is a destructive method. If validation fails when you call save!,
# it will raise an exception ActiveRecord::RecordInvalid and halt execution of the current transaction. For example:

@user = User.new(name: 'John')
@user.save! # => ActiveRecord::RecordInvalid: Validation failed: Email can't be blank


# Here, save! raises an exception because the email attribute is required. 
# The @user object is not saved to the database and cannot be modified further within the current transaction.

# In summary, save and save! behave similarly when validation succeeds. However, save! 
# is more strict and raises an exception if validation fails, whereas save simply returns false. 
# Use save! when you want to ensure that the record is valid and save it to the database in a single operation, 
# and use save when you want to check for validation errors and continue to modify the record.