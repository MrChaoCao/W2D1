require_relative 'board'
require_relative 'cursor'
require 'colorize'

class Display



  def initialize(board)
    @cursor = Cursor.new([0,0], board)
    @cursor_pos = @cursor.cursor_pos
    @board = board
  end

  def move(new_pos)

  end

  def render

    @cursor.get_input

  end
end

if __FILE__ == $PROGRAM_NAME
  chester = Board.new
  lester = Display.new(chester)

  while true
    lester.render
  end
end
