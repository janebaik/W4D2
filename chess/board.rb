require_relative "./pieces/piece.rb"
require "byebug"


#note: you testing up move_piece
    #  the errors you are running to have to do with []pos and []= pos 
    #  you changed your inital start pos to not use these methods but once you fix those methods, you should use it 
    #  question: do you call the move piece on the piece class or instances?
        # how do you know if the piece move is valid without finishing the other classes?
        #  do you need to check if the end position has a piece there already? 

class InputError < StandardError; end
class Board 

    def initialize
        @board = Array.new(8) {Array.new(8)}
        # 2-dimensional array (an array of arrays). 
        # Each position in the board either holds a moving Piece or a NullPiece
        inital_start_pos
    end

    def [](pos)
        # debugger
        row, col = pos
        board[row][col]
    end

    def []=(pos, val)
        # debugger
        row, col = pos
        board[row][col] = val
    end

    # fix this later WHEN YOU CREATE THE PIECE YOU HAVE TO MAKE SURE BOARD IS AN INSTANCE(self)
    def inital_start_pos
        board.each_with_index do |col, index|
            col.each_with_index do |el, inner_index|
                pos = [index, inner_index]
                if index == 0 || index == 1
                    # board[index][inner_index] = :PB #Piece.new("black", self)
                    self[pos] = :PB #Piece.new("black", self)
                elsif index == 6 || index == 7
                    # board[index][inner_index] = :PW  #Piece.new("white", self)
                    self[pos] = :PW  #Piece.new("white", self)

                end
            end
        end
    end

    def printed
        board.each do |row|
            p row
        end
    end
    # update the 2D grid and also the moved piece's position. 
    # You'll want to raise an exception if:
        # there is no piece at start_pos or
        # the piece cannot move to end_pos.

    def move_piece(start_pos, end_pos)
        if !valid_pos?(start_pos) || !valid_pos?(end_pos)
            return raise InputError.new( "out of bounds") 
        end
        return raise InputError.new( "there is no piece in starting position") if self[start_pos] == nil
        return raise InputError.new( "there is already another piece there") if self[end_pos] != nil
        piece = self[start_pos] 
        self[end_pos] = piece
        self[start_pos] = nil
        board
    end

    def valid_pos?(pos)
        col = pos[0]
        row = pos[1]
        if col > 7 || col < 0 || row > 7 || row < 0 #if either are false 
            return false 
        else 
            return true 
        end
    end

    def add_piece(pos)
    end

    def checkmate?(color)
    end

    def in_check?(color)
    end

    def find_king(color)
    end

    def pieces
    end

    def dup
    end

    def move_piece!(color, start_pos, end_pos)
    end


    
    attr_reader :board

end
# FIRST TESTING
board1 = Board.new
# board1.board
board1.printed
board1.move_piece([7,3], [4,4])
p "   "
board1.printed
# //////////////


