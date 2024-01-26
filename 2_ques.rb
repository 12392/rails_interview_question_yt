# What are validations in rails? 
# At what moments of an object's lifecycle validations are checked?


# Validations in Ruby on Rails are a way to ensure that data entered into a model meets certain requirements before it is saved to the database. 
# Validations are used to ensure that the data entered is consistent, accurate, and meets the expectations of the application.

# Validations are defined in the model class using special validation methods, 
# such as validates_presence_of, validates_uniqueness_of, and validates_format_of. 
# These methods take arguments such as the name of the attribute being validated, and the type of validation being performed. 
# For example:



class User < ApplicationRecord
    validates_presence_of :name
    validates_uniqueness_of :email
    validates_format_of :phone, with: /\A\d{10}\z/
  end
end 

# In this example, we are validating that the name attribute is present, 
# that the email attribute is unique, and that the phone attribute matches a specific format.

# Validations are checked at specific moments of an object's 
# lifecycle. Here are the common moments when validations are checked:

# create: When an object is created using create method or save method, validations are checked before the object is saved to the database. 
# If any of the validations fail, the object is not saved to the database.

# update: When an object is updated using the update method or the save method, validations are checked before the object is saved to the database. 
# If any of the validations fail, the object is not saved to the database.

# destroy: When an object is destroyed using the destroy method, validations are not checked.

# valid?: When the valid? method is called on an object, validations are checked and the method returns true if the object passes all validations, or false if any of the validations fail.

# Validations are an essential part of building robust and reliable applications, as they help to ensure data consistency and accuracy.