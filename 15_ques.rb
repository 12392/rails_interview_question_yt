# What do you mean by Rolling back a migration? 
# How can you rollback a specific migration?

# Rolling back a migration means undoing the changes that were made to the database schema by a previous migration. 
# This can be useful if you need to correct an error or make a change to the schema that you no longer want to keep.

# To rollback the last migration that was run, you can use the following command:

rails db:rollback



# This will undo the changes made by the last migration file in the db/migrate directory.

# If you want to rollback a specific migration, you can specify the version number of the migration using the VERSION option. 
# For example, to rollback the migration with version number 20210420123456, you can use the following command


rails db:rollback VERSION=20210420123456

# This will undo the changes made by that specific migration.

# Note that rolling back a migration can have unintended consequences, 
# such as deleting data or causing errors in the application. 
# It is important to test your application thoroughly after rolling back a migration, 
# and to make sure that any data that was deleted or modified is properly restored.
