# What do you mean by helper classes? Explain


# In Rails, helper classes are modules that provide a set of methods that can be used in views to assist with generating HTML, 
# formatting data, or performing other common tasks. 
# Helper methods are typically defined in files located in the app/helpers directory and are automatically included in views.

# There are two types of helper classes in Rails: view helpers and controller helpers.

# View helpers are used to generate HTML and other content in views. 
# For example, the link_to helper is a view helper that generates a hyperlink based on the arguments that are passed to it.

# Controller helpers are used to perform tasks related to the controller and the current request. 
# For example, the redirect_to helper is a controller helper that is used to redirect the user to a different page.

# Helper methods can be called directly from views, without the need for any additional setup or configuration. 
# They can also be used to encapsulate complex logic or functionality, making it easier to reuse and maintain.

# Rails provides a number of built-in helper classes, 
# such as ActionView::Helpers::FormHelper for working with forms, ActionView::Helpers::TextHelper for working with text, 
# and ActionController::Helpers::UrlHelper for working with URLs. Additionally, 
# you can define your own custom helper classes by creating a new module and including it in the appropriate views or controllers.

# Using helper classes can help to make your code more modular and easier to maintain, 
# by encapsulating common functionality and reducing code duplication