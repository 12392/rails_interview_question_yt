# What do you mean by polymorphic association in rails? 
# When can one use this association?

# Polymorphic associations in Ruby on Rails allow a model to belong to multiple other models on a single association. 
# This means that a single association can be shared across multiple models, 
# and each model can have a different type of associated record. 
# In other words, a single association can be used for multiple models, regardless of their class.

# Polymorphic associations are defined using the belongs_to method with the polymorphic: true option, like this:


class Comment < ApplicationRecord
    belongs_to :commentable, polymorphic: true
  end
  
  class Article < ApplicationRecord
    has_many :comments, as: :commentable
  end
  
  class Photo < ApplicationRecord
    has_many :comments, as: :commentable
  end
end




# In this example, the Comment model belongs to either an Article or a Photo model 
# through the commentable polymorphic association. The Article and Photo models both have many comments and use the as: :commentable option 
# to indicate that they are the "commentable" model in the polymorphic association.

# Polymorphic associations can be useful when you have multiple models that need to associate with a single model, 
# but each model has different attributes and behaviors. For example, in a blog application, 
# comments could be associated with both articles and photos, even though articles and photos have different attributes and behaviors.

# One of the key benefits of polymorphic associations is that they allow you to write more flexible and modular code. 
# They make it possible to associate any number of models with a single model without having to create a separate association 
# for each type of model. 
# Polymorphic associations can also simplify database schema and make it more efficient 
# by reducing the number of tables required to represent the relationships.