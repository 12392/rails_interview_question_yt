# What are accessor methods in Ruby? List and explain accessor methods.

# Accessor methods in Ruby are methods that provide read and/or write access to the instance variables of a class. 
# They are commonly used to encapsulate access to an object's state, allowing controlled and consistent interaction with its data. 
# In Ruby, accessor methods are often created using attribute accessors, which include both reader and writer methods.

# There are three main types of accessor methods in Ruby:

# Reader Methods:
# Reader methods, also known as getters, provide read-only access to the values of instance variables.
# They allow you to retrieve the current value of an instance variable from outside the class.

class MyClass
  def initialize(name)
    @name = name
  end

  # Reader method for 'name'
  def name
    @name
  end
end

obj = MyClass.new("John")
puts obj.name  # Accessing the value using the reader method

# Alternatively, you can use the attr_reader macro to automatically create a reader method for an instance variable:

class MyClass
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

# Writer Methods:

# Writer methods, also known as setters, provide write-only access to the values of instance variables. 
# They allow you to set or modify the value of an instance variable from outside the class.

class MyClass
  def initialize(name)
    @name = name
  end

  # Writer method for 'name'
  def name=(new_name)
    @name = new_name
  end
end

obj = MyClass.new("John")
obj.name = "Alice"  # Modifying the value using the writer method

# Alternatively, you can use the attr_writer macro to automatically create a writer method for an instance variable:

class MyClass
  attr_writer :name

  def initialize(name)
    @name = name
  end
end

# Accessor Methods (Reader and Writer Combined):

# Accessor methods, also known as getters and setters, provide both read and write access to the values of instance variables.
# They allow you to both retrieve and modify the value of an instance variable from outside the class.

class MyClass
  def initialize(name)
    @name = name
  end

  # Accessor method for 'name' (getter and setter)
  def name
    @name
  end

  def name=(new_name)
    @name = new_name
  end
end

obj = MyClass.new("John")
puts obj.name      # Accessing the value using the accessor method (getter)
obj.name = "Alice" # Modifying the value using the accessor method (setter)

# Alternatively, you can use the attr_accessor macro to automatically create both reader and writer methods for an instance variable:

class MyClass
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
obj = MyClass.new("John")
puts '#######Both######'
puts obj.name      # Accessing the value using the accessor method (getter)
obj.name = "Alice"
puts obj.name 
puts '#######Both######'

# Using Accessor Methods with attr_ Macros:

# Ruby provides three convenient macros (attr_reader, attr_writer, and attr_accessor) to define accessor methods without explicitly writing them. 
# These macros automatically generate the appropriate reader, writer, or accessor methods for the specified instance variables.


# attr_reader Example:
class MyClass
  attr_reader :age

  def initialize(age)
    @age = age
  end
end

obj = MyClass.new(25)
puts obj.age  # Accessing the value using the generated reader method

# attr_writer Example:
class MyClass
  attr_writer :age

  def initialize(age)
    @age = age
  end
end

obj = MyClass.new(25)
obj.age = 30  # Modifying the value using the generated writer method

# attr_accessor Example:
class MyClass
  attr_accessor :age

  def initialize(age)
    @age = age
  end
end

obj = MyClass.new(25)
puts obj.age  # Accessing the value using the generated accessor method (getter)
obj.age = 30  # Modifying the value using the generated accessor method (setter)

# Using these macros is a concise and idiomatic way to define accessor methods for your classes in Ruby. 
# They help reduce boilerplate code and improve code readability
