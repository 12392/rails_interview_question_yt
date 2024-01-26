# what are delegates in Rails? Explain usage of delegates


# Delegates in Rails allow you to delegate a method call from one object to another object. 
# This can be useful when you have an object that has a relationship with another object, 
# and you want to be able to access some of the methods of the associated object directly from the original object.

# To define a delegate in Rails, you can use the delegate method in your model class. 
# For example, let's say you have a Post model that has a user association, 
# and you want to be able to access the name attribute of the associated user object directly from the post object. 
# You could define a delegate like this:

class Post < ApplicationRecord
    belongs_to :user
    delegate :name, to: :user
  end
 
  
#   With this delegate defined, you can now call post.name to retrieve the name of the associated user object, 
#   without having to first call post.user.name.

#   Delegates can also be used with the :prefix option to add a prefix to the delegated method name, 
#   or with the :allow_nil option to allow the delegate to return nil if the associated object is nil.
  
#   Using delegates can make your code more concise and easier to read, and can help to reduce coupling between objects 
#   by allowing you to access methods of associated objects without having to tightly couple the objects together.  
