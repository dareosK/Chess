class DisplayBoardTerminal
  def initialize(board)
    @board = board
  end

  def display
    @board.grid.each do |row|
      puts "--------"
      row.each do |square|
        if square.nil?
          print "  "
        else
          print "#{square.to_s}"
        end
      end
      puts
    end
    puts "--------"
  end
end
