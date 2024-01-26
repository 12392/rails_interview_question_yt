# Is it possible to change the convention of naming a table in rails? 
# If yes, how will you do this? Please explain.


# Yes, it is possible to change the convention of naming a table in Rails. 
# By default, Rails uses a convention where the pluralized name of the model class is used as the name of the database table. 
# For example, a User model would map to a users table in the database.

# To change this convention, you can specify a custom table name for a model by using the table_name method. 
# For example, if you wanted to use a table named people for a User model, you could define the model like this:


class User < ApplicationRecord
    self.table_name = "people"
end

# With this code, Rails will now use the people table for the User model, instead of the default users table.

# You can also use other methods to specify a custom table name based on a pattern or a dynamic value. 
# For example, you could use the table_name_prefix and table_name_suffix methods to add a prefix or suffix to the table name, respectively:
 

class User < ApplicationRecord
    self.table_name_prefix = "app_"
    self.table_name_suffix = "_data"
end


# With this code, Rails will use a table named app_users_data for the User model.

# In addition, you can use the set_table_name method, which is an alias for self.table_name=, 
# or you can pass a table name directly to the has_many, has_one, and belongs_to associations to specify the table name for the association.

# Overall, changing the convention of naming a table in Rails is easy and flexible, 
# and can be done in a variety of ways depending on your specific needs.
  