# What do you mean by migrations in Rails? What is the usage of rails migrations?

# In Rails, migrations are a way to manage changes to your database schema over time. 
# Migrations are Ruby scripts that describe how to create, modify, or delete database tables, columns, and indices.

# Rails migrations provide several benefits:

# Consistency: 
# Migrations help ensure that all developers on a project are using the same database schema, 
# making it easier to work collaboratively.

# Versioning: 
# Migrations are versioned, meaning you can roll back to a previous version 
# of the schema if something goes wrong.

# Testing: 
# With migrations, you can easily create and destroy a test database with a known schema, 
# making it easier to test your application.

# Documentation: 
# Each migration includes a timestamp and a description, p
# providing a history of changes to your database schema over time.

# Here's an example of a migration that creates a new table:


class CreatePosts < ActiveRecord::Migration[6.1]
    def change
      create_table :posts do |t|
        t.string :title
        t.text :body
        t.timestamps
      end
    end
  end
  


# This migration creates a new posts table with a title column 
# of type string, a body column of type text, and created_at and updated_at timestamp columns.

# Migrations can also modify existing tables, add new columns, or delete existing columns:


class AddAuthorToPosts < ActiveRecord::Migration[6.1]
    def change
      add_column :posts, :author, :string
    end
  end
  
  class RemoveAuthorFromPosts < ActiveRecord::Migration[6.1]
    def change
      remove_column :posts, :author
    end
  end



#   The first migration adds an author column of type string to the posts table, 
#   while the second migration removes the author column.

# Rails migrations provide a convenient and flexible way to manage changes to your database schema over time. 
# By versioning your migrations and providing clear documentation, 
# you can ensure that your database schema is consistent, maintainable, and testable.
  