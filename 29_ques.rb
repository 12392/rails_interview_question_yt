# What do you mean by rake tasks? 
# How can you define/implement custom rake tasks?

# Rake tasks are scripts in Ruby that automate common tasks in a Rails application. 
# They are executed using the rake command and are defined in files with a .rake extension 
# in the lib/tasks directory of your Rails application.

# Rake tasks can be used for a wide range of purposes, 
# such as running database migrations, populating a database with seed data, performing backups, 
# and running automated tests. Rails comes with a number of built-in rake tasks, such as db:migrate 
# for running database migrations and test for running tests.

# To define a custom rake task, you can create a new file in the 
# lib/tasks directory with a .rake extension, and define the task using the task method provided by Rake. 
# The task method takes two arguments: the name of the task, and a block of code to be executed 
# when the task is run. For example, the following code defines a custom rake task that prints a message:

# lib/tasks/my_task.rake
task :my_task do
    puts "Hello, world!"
  end
  
# To run the my_task task, you can use the rake command followed by the task name:

rake my_task

# You can also define dependencies between tasks using the depends_on method provided by Rake. 
# For example, the following code defines a task that depends on another task

  # lib/tasks/my_task.rake
task :my_task => :db:migrate do
    # ...
  end
  

#   In this example, the :my_task task depends on the db:migrate task, 
#   which means that db:migrate will be executed before my_task when you run rake my_task.

# Overall, rake tasks are a powerful tool for automating common tasks in a Rails application, 
# and can be easily customized and extended to suit your specific needs.