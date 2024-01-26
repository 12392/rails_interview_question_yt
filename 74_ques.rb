# What is your understanding of DRY code? Explain.

# DRY, which stands for "Don't Repeat Yourself," is a software development principle that emphasizes the importance of avoiding code duplication. 
# The DRY principle is one of the fundamental principles of software design and aims to promote maintainability, 
# readability, and efficiency in codebases.

# The main idea behind DRY is to have a single, authoritative source of truth for a particular piece of knowledge 
# or logic within a software system. Rather than duplicating code or information in multiple places, DRY encourages 
# developers to modularize and centralize that knowledge, making it easier to update, maintain, and understand.

# Key aspects of the DRY principle include:

# Single Source of Truth:
# Each piece of knowledge or logic in a system should have a single, unambiguous representation.
# Avoid duplicating the same code, business rules, or data in multiple locations.

# Code Reusability:
# Encourage the creation of reusable components, functions, or modules.
# Reuse existing code rather than duplicating it, reducing the chances of introducing bugs and making updates more straightforward.

# Modularity:
# Break down complex systems into smaller, modular components.
# Each module should have a specific responsibility and should not duplicate the functionality of other modules.

# Maintenance and Updates:
# When a change is required, developers only need to update one central location where the logic is defined.
# This reduces the risk of inconsistencies and ensures that changes are applied consistently throughout the codebase.

# Readability and Understandability:
# DRY code is generally more readable and understandable because developers can focus on the unique aspects of the code without being 
# distracted by repeated patterns.

# Example:
# Consider the following non-DRY example:
# Non-DRY (Repeating code)
def calculate_area_of_circle(radius)
  Math::PI * radius * radius
end

def calculate_volume_of_sphere(radius)
  (4.0 / 3.0) * Math::PI * radius * radius * radius
end

# In this example, the formula for calculating the area of a circle is repeated in the method calculate_area_of_circle, 
# and a similar formula is repeated in the method calculate_volume_of_sphere. This violates the DRY principle.

# A DRY version would refactor the code to reuse the common logic:

# DRY (Reusing code)
def calculate_area_of_circle(radius)
  Math::PI * radius * radius
end

def calculate_volume_of_sphere(radius)
  calculate_area_of_circle(radius) * (4.0 / 3.0) * radius
end

# Here, the logic for calculating the area of a circle is defined once in the calculate_area_of_circle method and reused 
# in the calculate_volume_of_sphere method, adhering to the DRY principle.

# By following DRY, developers can create more maintainable, scalable, and understandable codebases, reducing the likelihood of 
# introducing errors and making it easier to adapt to changes in requirements.
