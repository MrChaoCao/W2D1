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
    Array.new(8) { Array.new(8) } #null pieces
  end

  def find_king(color)

  end

  def dup
  end

  def move_piece!(from_pos, to_pos)
debugger
    from_val = @grid[from_pos]
    to_val = @grid[to_pos]

    @grid[from_pos] = to_val
    @grid[to_val] = from_val
    # @grid[from_pos], @grid[to_pos] = @grid[to_pos], @grid[from_pos]
  end

end
