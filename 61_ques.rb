# What do you mean by reversible migrations?

# Reversible migrations in Ruby on Rails refer to migrations that can be easily rolled back or undone. In Rails, when you define a migration 
# using the change method and use reversible operations, Rails automatically figures out how to reverse the operation when rolling back the migration. 
# This helps maintain the integrity of the database and makes it easier to revert changes.

# Example of a Reversible Migration:
# Let's consider a migration that adds a new column to a table:

class AddEmailToUsers < ActiveRecord::Migration[6.1]
    def change
    add_column :users, :email, :string
    end
end
# In this example, the add_column operation is reversible by default. 
# Rails understands how to reverse the addition of a column by removing that column when rolling back the migration. 
# You don't need to explicitly define a separate down method in this case.

# Using change Method:
# When you use the change method in a migration, Rails infers the reversible operations automatically. Here's an example:

class AddPhoneNumberToUsers < ActiveRecord::Migration[6.1]
    def change
    add_column :users, :phone_number, :string
    add_index :users, :phone_number, unique: true
    end
end
# In this migration, the addition of a column and the creation of an index are both reversible operations. 
# If you later decide to roll back this migration, Rails will automatically reverse these operations in the correct order.

# Reversible Operations:
# Many common operations in Rails migrations are automatically reversible. Some examples include:

# Adding or removing columns using add_column or remove_column.
# Creating or dropping tables using create_table or drop_table.
# Adding or removing indexes using add_index or remove_index.

# When to Use change vs. up and down:
# Use the change method when your migration involves operations that Rails can automatically reverse, 
# and you don't need to specify custom behavior for rolling back.

# If your migration involves complex or non-reversible operations, you might use the up and down methods to explicitly define
# how to apply and revert the changes.

# Benefits:
# Conciseness: Reversible migrations using the change method allow you to write more concise and readable migration code.

# Automatic Reversion: Rails automatically figures out how to reverse the operations, reducing the chances of errors during migration rollback.

class RemovePhoneNumberFromUsers < ActiveRecord::Migration[6.1]
    def change
    remove_column :users, :phone_number
    end
end
# In this example, the remove_column operation is automatically reversible, and 
# Rails will know how to add the column back if the migration needs to be rolled back.

# In summary, reversible migrations in Rails make it easier to manage database changes by automatically 
# inferring how to reverse operations when rolling back a migration. The change method is a convenient and 
# concise way to define reversible migrations.
