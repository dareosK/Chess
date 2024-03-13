class Queen
  attr_reader :color

  def initialize(color)
    @color = color
  end

  def to_s
    if @color == :black
      "♛"
    else
      "♕"
    end
  end

  def valid_move?(start, finish)
  end

  def move(board, start, finish)
    if valid_move?(start, finish)
      board[finish[0]][finish[1]] = self
      board[start[0]][start[1]] = nil
    else
      puts "Invalid move"
    end
  end
end
