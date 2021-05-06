require_relative "Square.rb"

class Board
  def initialize
    @grid = Array.new(9) {Array.new(9)}
  end

  def populate
    @grid.each_with_index do |row, i|
      row.each_with_index do |square, j|
        random = rand(1..5)
        @grid[i][j] = Square.new()
        if random == 5
          @grid[i][j].bomb = true 
        end
      end
    end
  end

  def render
    @grid.each_with_index do |row, i|
      row.each_with_index do |square, j|
        if @grid[i][j].bomb == true 
          print 'b ' 
        else
          print " "
        end
      end
      puts
    end
  end
end

board = Board.new()
board.populate
board.render