# The Slideable module can implement #moves, 
# but it needs to know what directions a piece can move in (diagonal, horizontally/vertically, both). 

# Classes that include the module Slideable (Bishop/Rook/Queen) 
# will need to implement a method #move_dirs, which #moves will use.

module Slideable

  # HORIZONTAL_DIRS stores an array of horizontal directions
    # when a piece moves in a given direction, its row and/or its column should increment by some value
    # ex: A piece starts at position [1, 2] and it moves horizontally to the right
      # its position changes to [1,3]
      # the row increases by 0 and the column increases by 1
  HORIZONTAL_DIRS = [
    [0, -1], # left [0,-1]
    [0, 1], # right
    [1, 0], # up (vertical)
    [-1, 0]  # down (vertical)
  ].freeze
  # .freeze will cause an object to become non-mutatable 

  # DIAGONAL_DIRS stores an array of diagonal directions
  DIAGONAL_DIRS = [
    [1, -1], # up + left
    [1, 1], # up + right
    [-1, -1], # down + left
    [-1, +1]  # down + right
  ].freeze


#   taking a step in one direction
  def horizontal_dirs
    # have to add extra logic?
    
    HORIZONTAL_DIRS

  end

  def diagonal_dirs
    DIAGONAL_DIRS
    #one step away from the piece (bishop and queen)
  end


  # should return an array of places a Piece can move to
  def moves
    # create array to collect moves
    final_array = []



    pos = self.move_dirs

    pos.each do |optional_pos|

    end

    # Note do these logics for all the optional positions 
    spec_dx = pos[0]
    spec_dy = pos[1]

    possible_movements = grow_unblocked_moves_in_dir(spec_dx, spec_dy)
    possible_movements
    # ending


    # iterate over each of the directions in which a slideable piece can move
      # use the Piece subclass' `#move_dirs` method to get this info
      # for each direction, collect all possible moves in that direction
        # and add them to your moves array 
        # (use the `grow_unblocked_moves_in_dir` helper method)

    # return the final array of moves (containing all possible moves in all directions)
  end


  private

  def move_dirs
    # subclass implements this
    raise NotImplementedError # this only executes if 
  end


  # this helper method is only responsible for collecting all moves in a given direction
  # the given direction is represented by two args, the combination of a dx and dy
  def grow_unblocked_moves_in_dir(dx, dy) #(0,1) move one to the right 
    # create an array to collect moves
    collected_moves = []

    # get the piece's current row and current column
    current_col = self.pos[0]
    current_row = self.pos[1]

    move_col = dx
    move_row = dy

    # stop looping if the new position is invalid (not on the board); the piece can't move in this direction
    while self.board.valid_pos?([current_col,current_row]) #valid_pos?
      # continually increment the piece's current row and current column to generate a new position
      current_col += move_col
      current_row += move_row

    #   last round
    if self.board.valid_pos?([current_col,current_row])
        break
    end

      # if the new position is empty, the piece can move here, so add the new position to the moves array
      if self.board[current_col][current_row] == nil 
        collected_moves << [current_col, current_row]
      end
      # if the new position is occupied with a piece of the opposite color, the piece can move here (to capture the opposing piece),
      # so add the new position to the moves array and stop looping
      if self.board[current_col][current_row].color != self.color
        collected_moves << [current_col, current_row]
        break
      end
      # if the new position is occupied with a piece of the same color, stop looping
      if self.board[current_col][current_row].color == self.color
        break
      end

    # return the final moves array
    end
    collected_moves
  end



end




# Note: you can invoke methods from the piece from within the module methods, and vice versa. It is a two way street!