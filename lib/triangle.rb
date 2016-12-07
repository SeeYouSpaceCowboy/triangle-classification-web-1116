class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind

    if triangleSides?(side1, side2, side3)
      raise TriangleError
    elsif side1 == side2 && side2 == side3
      return :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      return :isosceles
    else
      return :scalene
    end
  end
end

def triangleSides?(side1, side2, side3)
  bool = false
  if side1 <= 0 || side2 <= 0 || side3 <= 0
    bool = true
  elsif (side1 + side2) <= side3 || (side2 + side3) <= side1 || (side3 + side1) <= side2
    bool = true
  end

  bool
end

class TriangleError < StandardError

end
