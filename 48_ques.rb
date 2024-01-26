# How many form helpers are provided by rails? Tell the names and differences between them.

# Rails provides several form helpers that make it easy to create forms in HTML. 
# Some of the most commonly used form helpers are:

# form_for: 
# This helper creates a form for a specific object and maps the form fields to the object's attributes. 
# It also generates the appropriate HTTP method and action based on the object's current state (i.e., whether it's a new or existing record).

# form_tag: 
# This helper creates a basic HTML form that can be used to submit data to a specific URL. 
# Unlike form_for, it doesn't map the form fields to any specific object.

# fields_for: 
# This helper creates form fields for a nested model or association. 
# It allows you to create a form that updates multiple models or records at once.

# label: 
# This helper creates a label tag for a form field. 
# It can be used to associate a label with a specific form field, making it easier for users to understand what information is being requested.

# text_field: 
# This helper creates a text input field for a form. 
# It can be used to collect short text inputs such as names, emails, and passwords.

# text_area: 
# This helper creates a text area field for a form. 
# It can be used to collect longer text inputs such as comments or messages.

# select: 
# This helper creates a drop-down menu for a form. 
# It can be used to collect input options for a specific field.

# check_box: 
# This helper creates a checkbox for a form. 
# It can be used to collect a boolean input from the user, such as whether they want to receive promotional emails.

# radio_button: 
# This helper creates a radio button for a form. 
# It can be used to collect a single input from a set of options, such as a user's gender.

# submit: 
# This helper creates a submit button for a form. 
# It can be used to submit the form data to the server.

# These are just some of the most commonly used form helpers in Rails. 
# Each of these helpers has its own set of options and customization settings, allowing you to create complex forms with ease.