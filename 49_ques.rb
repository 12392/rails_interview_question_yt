# What is the difference between delete and destroy in Rails?


# In Rails, delete and destroy are both methods that can be used to remove records from a database, but they work differently.

# The delete method removes a record from the database without running any of the ActiveRecord callbacks or validations.
#  This means that if the record has any associated records, they will not be deleted automatically. 
#  Also, if there is any before_delete or after_delete callback defined on the model, it will not be called.

# On the other hand, the destroy method is a more complete removal of a record from the database. 
# It removes the record, runs any associated ActiveRecord callbacks or validations, and also deletes any dependent records. 
# This is because, when we define an association between two models, we can specify whether or not to delete associated records 
# when the parent record is deleted.

# In summary, delete is a simple and fast way to remove a record from the database, 
# while destroy is a more complete and safe way to remove a record that also runs callbacks and takes into account associated records.