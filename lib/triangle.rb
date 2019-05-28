class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end
#initalizes with three lengths
 def illegal? #defines what is illegal according to triangle inequality
   #there are two ways: 1. one length = 0, 2. sum of two lengths is less than the other
   illegal_one = @length_one <= 0 || @length_two <= 0 || @length_three <= 0
   illegal_two = @length_one + @length_two <= @length_three || @length_one + @length_three <= @length_two || @length_two + @length_three <= @length_one

   if illegal_one == true
     true
   elsif illegal_two == true
     true
   else
     false
   end
 end

  def kind #defines what kind of triangle it is
    if self.illegal? == true #first need to determine if triangle is illegal or not, if yes raise error
      raise TriangleError
    elsif @length_one == @length_two && @length_two == @length_three #then determine what kind of triangle
      return :equilateral
    elsif @length_one == @length_two || @length_one == @length_three || @length_two == @length_three
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
  end

end


#equalateral triangle - all lengths are same
#isosceles - 2 lengths are same, 1 different
#scalene - lengths are all different, sum of two lengths always exceeds 3rd
#each length is bigger than 0
