# What is the difference between a sidekiq worker and rails ActiveJob?

# Sidekiq worker and Rails ActiveJob are both used to perform background jobs in a Rails application, 
# but they have some differences in terms of their functionality and implementation.

# A Sidekiq worker is a class that includes the Sidekiq::Worker module and defines a perform method.
# When a job is added to the Sidekiq queue, the Sidekiq worker is responsible for picking it up and performing the job asynchronously. 
# Sidekiq workers have a number of built-in features, such as retries, scheduled jobs, and batch processing.

# On the other hand, Rails ActiveJob is an abstraction layer that provides a unified API for working with multiple background job processing libraries, 
# including Sidekiq, DelayedJob, and Resque. 
# ActiveJob defines a job class that includes the ActiveJob::Base module and defines a perform method. 
# The job class can be configured to use a specific backend, such as Sidekiq, and the ActiveJob framework handles the details of queuing and processing the job.

# One key difference between Sidekiq worker and ActiveJob is that ActiveJob provides a higher level of abstraction and can be used to switch between different job processing libraries without changing the code. 
# This can be useful if you want to experiment with different backends or if you need to switch to a different backend for scaling or other reasons.

# Another difference is that Sidekiq workers have more built-in features and can be more flexible and powerful in certain use cases.
#  For example, Sidekiq workers can be used to process jobs in batches, whereas ActiveJob does not have built-in support for batch processing.

