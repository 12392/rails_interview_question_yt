# What do you mean by sanitizing params in Rails?

#     In Rails, "sanitizing params" refers to the practice of filtering and cleaning user input received through request parameters 
#     (usually from forms) before using them in the application. The goal is to ensure that the input is safe, free from malicious code, 
#     and suitable for use in various parts of the application, such as database queries, rendering views, or other sensitive operations.

#     Here are some common techniques and tools used for sanitizing params in Rails:
    
#     1. **Strong Parameters:**
#        - Rails introduced the concept of "Strong Parameters" to help control which parameters are allowed to be used in controller actions. 
#        Strong Parameters require explicit declaration of permitted parameters, preventing unexpected or malicious parameters from being processed.
    
       ```ruby
       # In the controller
       def create
         User.create(user_params)
       end
    
       private
    
       def user_params
         params.require(:user).permit(:name, :email)
       end
       ```
    
    #    In this example, only the `name` and `email` parameters are permitted for mass assignment, and other parameters will be ignored.
    
    # 2. **Parameter Validation:**
    #    - Before using parameters in your application logic, it's a good practice to validate them based on expected data types, 
    #    ranges, or other criteria. For example, ensuring that a numerical parameter is indeed a number.
    
       ```ruby
       def update
         quantity = params[:quantity].to_i
         if quantity.is_a?(Integer) && quantity > 0
           # Proceed with the logic
         else
           # Handle invalid input
         end
       end
       ```
    
    # 3. **HTML Escape:**
    #    - When rendering user input in views, especially when displaying content in HTML, 
    # #    it's important to escape the content to prevent Cross-Site Scripting (XSS) attacks. 
    #     Rails provides the `h` or `html_escape` method for this purpose.
    
       ```ruby
       <%= h(params[:user_input]) %>
       ```
    
    #    This ensures that any HTML tags within `params[:user_input]` are displayed as plain text.
    
    # 4. **Database Query Safety:**
    #    - When using user input in database queries, it's crucial to avoid SQL injection attacks. Rails ActiveRecord provides mechanisms 
    #    to safely handle user input in queries using placeholders.
    
       ```ruby
       User.where("name = ?", params[:name])
       ```
    
    #    In this example, the use of placeholders ensures that the value of `params[:name]` is properly sanitized before being 
        # included in the SQL query.
    
    # By following these practices, Rails applications can mitigate security risks associated with untrusted user input, 
    # ensuring that the data used in the application is safe and adheres to the expected format and constraints.
