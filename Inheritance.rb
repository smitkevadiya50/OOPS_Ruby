=begin
In this example, Dog and Cat classes inherit from Animal class. 
They have access to the speak method of Animal and can modify it. 
The super keyword is used to call the parent version of the method.
=end

# Define a base class 'Animal'
class Animal
    def initialize(name)
      @name = name
    end
  
    def speak
      "#{@name} says "
    end
  end
  
  # Define a derived class 'Dog' 
  class Dog < Animal
    def speak
      super + 'woof!'
    end
  end
  
  # Define another derived class 'Cat' 
  class Cat < Animal
    def speak
      super + 'meow!'
    end
  end
  
  dog = Dog.new('Rover')
  puts dog.speak # Rover says woof!
  
  cat = Cat.new('Mittens')
  puts cat.speak # Mittens says meow!
  