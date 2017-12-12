require_relative 'board'

class Piece
  attr_accessor :name

  def initialize(name = "x")
    @name = name
  end

  def to_s
    @name
  end
end
