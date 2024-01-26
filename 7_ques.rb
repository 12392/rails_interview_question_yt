# How can you define custom validations in rails?

# You can define custom validations in Rails by creating a new validation method on your model 
# and using the validate method to register it. Here's an example:

class Person < ApplicationRecord
    validate :name_starts_with_a
  
    private
  
    def name_starts_with_a
      errors.add(:name, "must start with 'A'") unless name&.starts_with?('A')
    end
  end
  
  


# In this example, the validate method is called with the symbol :name_starts_with_a, 
# which refers to a private method defined in the same class. The name_starts_with_a method checks 
# if the name attribute of the Person object starts with the character 'A'. 
# If it doesn't, the method adds an error to the errors object, which Rails uses to track validation errors.