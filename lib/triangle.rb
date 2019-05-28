class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
  end

  def kind
    if @length_one <= 0 || @length_two <= 0 || @length_three <= 0
      raise TriangleError
    elsif @length_one == @length_two && @length_two == @length_three
      return :equilateral
    elsif @length_one == @length_two || @length_one == @length_three || @length_two == @length_three
      return :isosceles
    else
      #@length_one + @length_two > @length_three || @length_one + @length_three > @length_two || @length_two + @length_three > @length_one
      return :scalene
    end
  end

  class TriangleError < StandardError
  end
end


  # write code here
 #equalateral triangle - all lengths are same
    #isosceles - 2 lengths are same, 1 different
    #scalene - lengths are all different, sum of two lengths always exceeds 3rd
    #each length is bigger than 0



