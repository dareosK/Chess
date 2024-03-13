class King
  attr_reader :color

  def initialize(color)
    @color = color
  end

  def to_s
    if @color == :white
      "♔"
    else
      "♚"
    end
  end
end
