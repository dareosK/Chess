class Knight
  def initialize(color)
    @color = color
  end

  def to_s
    @color == :white ? "♘" : "♞"
  end
end
