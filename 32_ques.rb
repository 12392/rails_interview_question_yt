# How do you pass default arguments to a controller action where you instantiate a new model object?

# In a Rails controller, you can pass default arguments to an action where you instantiate 
# a new model object by using a combination of the params method and Ruby's Hash class.

# Assuming that you have a model class called Post and a new action that instantiates a new Post object,
#  you can pass default arguments to the Post.new method by using the merge method on the params hash.

# For example, let's say that you want to pass a default value of 'draft' for the status attribute of the Post model. 
# You can do this by modifying the new action in the controller as follows:


class PostsController < ApplicationController
    def new
      @post = Post.new(post_params.merge(status: 'draft'))
    end
  
    private
  
    def post_params
      params.require(:post).permit(:title, :body)
    end
  end

#   In this example, the new action first calls the post_params method to permit the :title and :body attributes from the params hash. 
#   \It then merges a status attribute with a default value of 'draft' into the permitted attributes using the merge method.

#   This approach allows you to pass default arguments to the Post.new method while still permitting the :title and :body attributes 
#   from the params hash. The resulting @post object will have the default value of 'draft' for the status attribute 
#   unless a different value is explicitly provided in the params hash.
  
#   Overall, passing default arguments to a controller action where you instantiate a 
#   new model object can be useful when you want to provide default values for certain attributes of the model. 
#   By using the merge method and the params hash, you can easily specify these default values while still permitting user-submitted data.
  