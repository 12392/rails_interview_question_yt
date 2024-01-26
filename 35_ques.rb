# What is the difference between before_save, before_create and before_update?


# In Ruby on Rails, before_save, before_create, and before_update are callback methods that are executed at specific points 
# in the lifecycle of an ActiveRecord object. The main differences between these callbacks are:

# before_save: This callback is called before an ActiveRecord object is saved to the database, regardless of whether 
# it is a new record or an existing one. This means that it is called both when creating a new record (create) and 
# updating an existing one (update).

# before_create: This callback is called only before a new ActiveRecord object is saved to the database. 
# It is not called when updating an existing object. This means that it is called only when using the create method, 
# and not when using the update method.

# before_update: This callback is called only before an existing ActiveRecord object is saved to the database. 
# It is not called when creating a new object. This means that it is called only when using the update method, 
# and not when using the create method.

# In summary, before_save is called before both create and update, before_create is called only before create, 
# and before_update is called only before update. The choice of which callback to use depends on the specific requirements 
# of your application and the behavior that you want to implement.