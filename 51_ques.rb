# Elasticsearch is a search engine based on the Lucene library. 
# It provides a powerful and flexible full-text search engine 
# that can be integrated with Ruby on Rails applications using the Elasticsearch Ruby gem.

# Here is an example of how to use Elasticsearch in a Rails application:

# First, we need to install the Elasticsearch Ruby gem:

gem 'elasticsearch-model'
gem 'elasticsearch-rails'


# Next, we need to create an Elasticsearch index for our model. 
# We can do this by including the Elasticsearch::Model module in our model and defining the index settings and mappings:

    class Product < ApplicationRecord
        include Elasticsearch::Model
        include Elasticsearch::Model::Callbacks
      
        index_name "products-#{Rails.env}"
      
        settings do
          mappings dynamic: false do
            indexes :name, type: :text
            indexes :description, type: :text
            indexes :price, type: :float
          end
        end
      end
 
      
# This will create an Elasticsearch index for the Product model with the 
# name products-development (or products-production, etc., depending on the Rails environment).

# We can then use the Elasticsearch query DSL to perform searches on our index. 
# For example, we can define a search method in our controller that accepts a query string and returns matching products:

class ProductsController < ApplicationController
    def search
      @query = params[:query]
      @products = Product.search({
        query: {
          multi_match: {
            query: @query,
            fields: ['name^10', 'description^5']
          }
        }
      })
    end
end


# This will perform a multi-field search on the name and description fields of the Product index and return matching products, 
# with the results sorted by relevance.

# We can then use the search results in our view to display the matching products:

<% @products.each do |product| %>
    <div>
      <h3><%= link_to product.name, product_path(product) %></h3>
      <p><%= product.description %></p>
      <p>Price: <%= number_to_currency(product.price) %></p>
    </div>
<% end %>

# Overall, Elasticsearch provides a powerful and flexible way to add search capabilities to
#  Ruby on Rails applications. It can be integrated with ActiveRecord models and supports a wide range of search features and query types.

  