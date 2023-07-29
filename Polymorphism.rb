=begin
In this example, 
we see polymorphism through the different implementations of the area method for Circle and Square classes. 
When we iterate over an array of shapes, the correct method is called for each type of shape.
=end

# Define a 'Shape' class
class Shape
    def initialize(name)
      @name = name
    end
  
    def area
      raise 'Cannot get area of an abstract shape'
    end
  end
  
  # Define a 'Circle' class
  class Circle < Shape
    def initialize(radius)
      super('Circle')
      @radius = radius
    end
  
    def area
      Math::PI * @radius**2
    end
  end
  
  # Define a 'Square' class
  class Square < Shape
    def initialize(side_length)
      super('Square')
      @side_length = side_length
    end
  
    def area
      @side_length**2
    end
  end
  
  shapes = [Circle.new(2), Square.new(3)]
  shapes.each do |shape|
    puts "The area of the #{shape.class} is #{shape.area}"
  end
  
=begin
Output:
The area of the Circle is 12.566370614359172
The area of the Square is 9
=end