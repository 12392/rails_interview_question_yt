# What do you mean by page caching, action caching and fragment caching?

# In Ruby on Rails, caching is a technique used to store copies of dynamically generated content so that future requests 
# for the same content can be served more quickly. Rails provides several caching mechanisms, including page caching, action caching, 
# and fragment caching.

# Page Caching:

# What it does:
# Page caching involves storing the entire HTML output of a controller action as a static HTML file. Subsequent requests 
# for the same action can be served by directly sending the pre-generated HTML file without re-executing the controller action 
# or rendering the view.

# When to use:
# Page caching is suitable for pages that rarely change and don't depend on user-specific information. Examples include static
# pages or pages with content that changes infrequently.

class PagesController < ApplicationController
    caches_page :home

    def home
    # Controller action logic
    end
end

# Action Caching:

# What it does:
# Action caching involves storing the output of a controller action in the cache, but it doesn't store the entire HTML page 
# like page caching. Instead, it stores the rendered content of the action and serves it directly for subsequent requests.

# When to use:
# Action caching is suitable for pages where parts of the content may change based on user-specific information but can still be cached. 
# It's more flexible than page caching and allows for different cached versions based on conditions.

class ProductsController < ApplicationController
    caches_action :show

    def show
    @product = Product.find(params[:id])
    # Controller action logic
    end
end

# Fragment Caching:

# What it does:
# Fragment caching involves caching specific parts (fragments) of a view rather than caching entire pages or actions. 
# It allows caching dynamic content within a view, and the cached fragments can be reused across different views or actions.

# When to use:
# Fragment caching is suitable for caching specific, often-reused parts of a page that are computationally expensive to generate or depend on 
# dynamic data.

# In a view
<% cache("recent_products") do %>
    <h2>Recent Products</h2>
    <% @recent_products.each do |product| %>
    <%= render partial: "product", locals: { product: product } %>
    <% end %>
<% end %>
# In this example, the content within the cache block is cached with a key ("recent_products"). The next time this fragment is rendered, 
# Rails checks the cache, and if a cached version exists, it is used instead of re-rendering the content.

# Caching is a powerful technique to improve the performance of web applications by reducing the time and resources needed to generate and 
# serve content. The choice between page caching, action caching, and fragment caching depends on the specific requirements of the application 
# and the nature of the content that needs to be cached.
