require 'pry'

class Triangle
  attr_accessor :sides

  def initialize side1, side2, side3
    @sides = [side1, side2, side3]
  end

  def kind
    if @sides.include?(0)
      TriangleError
    elsif sides.uniq.length == 1
      :equilateral
    elsif sides.uniq.length == 2
      :isosceles
    elsif sides.uniq.length == 3
      :scalene  
    end
  end

  class TriangleError < StandardError

  end
end

t1 = Triangle.new(2,3,3)
t2 = Triangle.new(5,5,5)
t3 = Triangle.new(6, 7, 8)

def reload
  load 'lib/triangle.rb'
end

# binding.pry