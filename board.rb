require_relative "pieces"
require_relative "display_board_terminal"

class Board
  attr_reader :display_board_terminal, :grid
  def initialize
    @display_board_terminal = DisplayBoardTerminal.new(self)
    @grid = Array.new(8) { Array.new(8) }
  end

  def start_game
    @grid[0][0] = Rook.new(:black)
    @grid[0][1] = Knight.new(:black)
    @grid[0][2] = Bishop.new(:black)
    @grid[0][3] = Queen.new(:black)
    @grid[0][4] = King.new(:black)
    @grid[0][5] = Bishop.new(:black)
    @grid[0][6] = Knight.new(:black)
    @grid[0][7] = Rook.new(:black)
    @grid[1].map! { |square| square = Pawn.new(:black) }
    @grid[6].map! { |square| square = Pawn.new(:white) }
    @grid[7][0] = Rook.new(:white)
    @grid[7][1] = Knight.new(:white)
    @grid[7][2] = Bishop.new(:white)
    @grid[7][3] = Queen.new(:white)
    @grid[7][4] = King.new(:white)
    @grid[7][5] = Bishop.new(:white)
    @grid[7][6] = Knight.new(:white)
    @grid[7][7] = Rook.new(:white)

    @grid
  end


end
