
require_relative 'piece'
require_relative 'slideable'

class Rook < Piece
  include Slideable

  def symbol
    '♜'.colorize(color)
  end

  protected

  def move_dirs
    # horizontally or vertically only
    # code begins  (im not sure which one we would want)
    # return [[1,0], [-1,0], [0,1], [0,-1]]
    # or
    # horizontal_dirs
    # code ends
    # return the directions in which a rook can move
    # a rook can move horizontally (across rows and columns)

  end
end