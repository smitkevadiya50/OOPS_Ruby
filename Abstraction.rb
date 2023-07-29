=begin
In this example, 
Shape serves as an abstract class, providing a common interface for Circle and Square. 
If a class includes Shape but doesn't implement the draw method, an error will be thrown.
=end

# Abstract class
module Shape
    def draw
      raise NotImplementedError, 'Subclass must define draw method'
    end
  end
  
  # Concrete class Circle
  class Circle
    include Shape
  
    def draw
      puts 'Drawing a Circle.'
    end
  end
  
  # Concrete class Square
  class Square
    include Shape
  
    def draw
      puts 'Drawing a Square.'
    end
  end
  
  # Creating new objects of classes Circle and Square
  Circle.new.draw # Outputs "Drawing a Circle."
  Square.new.draw # Outputs "Drawing a Square."

=begin   
Output:
Drawing a Circle.
Drawing a Square. 
=end