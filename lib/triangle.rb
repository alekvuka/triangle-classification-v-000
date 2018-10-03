class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one.to_f
    @side_two = side_two.to_f
    @side_three = side_three.to_f
  end

  def kind

      total = @side_one + @side_two + @side_three

      if @side_one == 0 || @side_two == 0 || @side_three == 0
        raise TriangleError
      elsif total != 180
        raise TriangleError
      elsif @side_one == 60 && @side_two == 60 && @side_three = 60
        :equilateral
      elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
        :isoceles
      else
        :scalene
      end

  end

  class TriangleError < StandardError
    puts

  end




end
