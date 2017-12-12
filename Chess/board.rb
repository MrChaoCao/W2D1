require_relative 'piece'
require 'byebug'

class Board

  attr_reader :grid

  def initialize
    @grid = Board.blank_grid
    self.populate
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, value)
    row, col = pos
    @grid[row][col] = value
  end

  def populate
    @grid.each_index do |row|
      next if row >= 2 && row <= 5
      @grid.each_index do |col|
        self[[row, col]] = Piece.new
      end
    end
  end

  def self.blank_grid
    Array.new(8) { Array.new(8) }
  end

  def find_king(color)

  end

  def dup
  end

  def move_piece!(from_pos, to_pos)
    if self[from_pos].nil?
      raise "No piece at start position"
    elsif self[to_pos].nil?
      raise "KLFD:JKLFSD:JKLFDSSJFL:DSFJDLKS:JFLKDSSDFJLK:FDSJKLFJSD:LFKDS::JSDFKL:DSFKLJDS:"
    else
      self[from_pos], self[to_pos] = self[to_pos], self[from_pos]
    end
  end

# def in_bounds(pos)
#   # r
# end

end
class StartPositionError < StandardError
  def message
    'No piece at start position!'
  end
end
