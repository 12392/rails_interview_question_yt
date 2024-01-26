# When do you need to skip callbacks? List a few of the methods, by using them you can skip callbacks.

# Skipping callbacks in Rails can be necessary in certain scenarios when you want to perform actions without triggering the associated callbacks. 
# Callbacks are methods that are invoked at certain moments in the lifecycle of an Active Record object, 
# such as before or after a record is saved or destroyed.

# Here are a few scenarios where you might need to skip callbacks:

# Bulk Operations:
# When performing bulk operations like updating multiple records, skipping callbacks can improve performance by avoiding the overhead 
# of executing callbacks for each record individually.

# Data Import:
# During data import processes, you might want to skip callbacks to speed up the import and prevent unnecessary side effects triggered
# by callbacks.

# Conditional Operations:
# In cases where you want to update a record but skip certain callbacks based on specific conditions.

# Methods to Skip Callbacks:

# Several methods allow you to skip callbacks in Rails:
# save and save! with :without_callbacks option:

# The save and save! methods allow you to skip callbacks using the :without_callbacks option.
record.save(without_callbacks: true)

# update and update! with :without_callbacks option:
# Similarly, the update and update! methods support the :without_callbacks option.
record.update(attributes, without_callbacks: true)

# update_column and update_columns:
# These methods allow you to update specific columns without triggering validations or callbacks.
record.update_column(:column_name, new_value)
record.update_columns(column_name: new_value, another_column: another_value)

# delete and delete_all:
# When deleting records, you can use delete or delete_all to skip callbacks.

record.delete
Model.delete_all(conditions, without_callbacks: true)

# destroy and destroy_all:
# The destroy and destroy_all methods destroy records, triggering callbacks. However, 
# you can use the :validate option to skip validations and callbacks.
record.destroy(validate: false)
Model.destroy_all(conditions, validate: false)

# update_all:
# The update_all method updates multiple records with a single query and skips callbacks.
Model.update_all("column_name = new_value", conditions)

# Note:
# While these methods allow you to skip callbacks, use caution and ensure that skipping callbacks aligns with your application's 
# logic and data integrity requirements. Skipping callbacks can lead to unexpected behavior if not used carefully.

# Additionally, the specific methods and options available may vary depending on the Rails version. Always refer to the documentation 
# for the version you are using.
