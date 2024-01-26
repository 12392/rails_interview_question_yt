# What do you mean by schema versioning in Rails? When does it change?

# In Rails, schema versioning refers to the versioning of the database schema that defines the structure of your database tables. 
# The schema includes information about tables, columns, data types, and various constraints.
# Rails provides a mechanism to version your database schema using migrations.

# Database Migrations:
# Rails uses database migrations to manage the evolution of the database schema over time. 
# A migration is a Ruby script that specifies changes to be made to the database schema, such as creating or modifying tables and columns. 
# Migrations are executed using the rails db:migrate command.

# Schema Version:
# The schema version is an integer value that gets incremented each time a migration is run. 
# The schema version is stored in the schema_migrations table in the database, which keeps track of which migrations have been applied.

# When the Schema Version Changes:
# Running Migrations:
# When you create a new migration using rails generate migration, and you run rails db:migrate, the schema version gets incremented.

rails generate migration AddColumnToTable column_name:data_type
rails db:migrate

# Rolling Back Migrations:
# When you rollback a migration using rails db:rollback, the schema version is decremented.

rails db:rollback

# Resetting the Database:
# When you reset the database using rails db:reset, which rolls back all migrations and then runs them again, the schema version changes.

rails db:reset


# Use Cases:

# Version Control Integration:
# Schema versioning is useful for version control systems to track changes to the database schema over time.
# Each migration corresponds to a specific version of the schema, making it easy to collaborate on projects and apply changes consistently.

# Database Consistency:
# By versioning the schema, Rails ensures that developers working on the same project have a consistent and up-to-date database structure.

# Rolling Back Changes:
# If a migration contains an error or if you need to roll back to a previous state, the schema versioning system allows you to revert to a 
# specific version of the database schema.

# Example:
# Suppose you have two migrations:
# db/migrate/20220101000000_create_users.rb
class CreateUsers < ActiveRecord::Migration[6.1]
    def change
    create_table :users do |t|
        t.string :name
        t.timestamps
    end
    end
end
# db/migrate/20220102000000_add_email_to_users.rb
class AddEmailToUsers < ActiveRecord::Migration[6.1]
    def change
    add_column :users, :email, :string
    end
end

# After running these migrations, the schema version in the schema_migrations table would be 20220102000000, 
# indicating that both migrations have been applied.

# If you roll back the second migration (rails db:rollback), the schema version would be 20220101000000, 
# indicating that only the first migration has been applied.

# In summary, schema versioning in Rails involves incrementing and decrementing a version number each time a migration
# is run or rolled back. This versioning system helps manage and track changes to the database schema over the course of a project.
