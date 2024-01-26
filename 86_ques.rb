# What do you mean by strict and conditional validations?

# In the context of Rails validations, "strict" and "conditional" are terms used to describe different
# approaches to applying validations to a model's attributes.

# Strict Validations:
# Strict validations refer to validations that are always enforced, regardless of the context or conditions. 
# If a strict validation fails, it results in an error, preventing the record from being saved to the database.

# For example, consider a presence validation for an attribute:
class User < ApplicationRecord
    validates :username, presence: true
end
# In this case, the presence: true validation is strict.
# It ensures that the username attribute must not be empty (nil or an empty string) for any attempt to save a user record.

# Conditional Validations:
# Conditional validations are validations that are applied based on certain conditions.
# These conditions determine whether the validation should be executed. 
# If the conditions are met, the validation is enforced; otherwise, it is skipped.

# For example, you might have a scenario where a certain validation should only be applied if a specific condition is true:
class Order < ApplicationRecord
    validates :discount_code, presence: true, if: :discount_available?

    def discount_available?
    # Some logic to determine if a discount is available
    # For example, check if the order total is above a certain threshold
    total_amount > 100
    end
end
# In this example, the presence: true validation for the discount_code attribute is conditional. 
# It will only be enforced if the discount_available? method returns true. If the condition is not met, the validation is skipped, 
# and the absence of a discount code is not considered an error.

# Summary:

# Strict Validations:
# Always enforced without considering specific conditions.
# Applied universally to all attempts to save the record.

# Conditional Validations:
# Applied based on specific conditions.
# Skipped if the conditions are not met.

# Use Cases:
# Strict Validations:
# Useful for enforcing fundamental data integrity rules that should always be true.

# Conditional Validations:
# Useful for applying context-specific validation rules, such as applying a discount code validation only when certain conditions are met.

# Recommendations:
# Use strict validations for essential data integrity rules that should apply universally.
# Use conditional validations for rules that depend on specific conditions or context.

# The choice between strict and conditional validations depends on the specific requirements of your application and 
# the flexibility needed in applying validation rules based on different scenarios.
