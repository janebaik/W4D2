require_relative "./pieces/piece.rb"


#note: you testing up move_piece
    #  the errors you are running to have to do with []pos and []= pos 
    #  you changed your inital start pos to not use these methods but once you fix those methods, you should use it 
    #  question: do you call the move piece on the piece class or instances?
        # how do you know if the piece move is valid without finishing the other classes?
        #  do you need to check if the end position has a piece there already?
    #  what you know: inital start pos is right 


class Board 

    def initialize
        @board = Array.new(8) {Array.new(8)}
        # 2-dimensional array (an array of arrays). 
        # Each position in the board either holds a moving Piece or a NullPiece
        inital_start_pos
    end

    def [](pos)
        col = pos[0]
        row = pos[1]
        board[col][row]
    end

    def []=(pos, val)
        col = pos[0]
        row = pos[1]
        board[col][row] = val 
    end

    def inital_start_pos
        board.each_with_index do |col, index|
            col.each_with_index do |el, inner_index|
                # pos = [index, inner_index]
                if index == 0 || index == 1
                    board[index][inner_index] = Piece.new("black", self)
                    # board[index, inner_index] = Piece.new("black", self)
                elsif index == 6 || index == 7
                    board[index][inner_index] = Piece.new("white", self)
                    # board[index, inner_index] = Piece.new("white", self)

                end

            end
        end
        board
    end

    # update the 2D grid and also the moved piece's position. 
    # You'll want to raise an exception if:
        # there is no piece at start_pos or
        # the piece cannot move to end_pos.


    def move_piece(start_pos, end_pos)
        return raise "out of bounds for pos" if !valid_pos?(start_pos) || !valid_pos?(end_pos) #if either are false 
        return raise "there is no piece in starting position" if board[start_pos] == nil
        return raise "there is already another piece there" if board[end_pos] != nil
        
        board[end_pos] = board[start_pos] 


    end

    def valid_pos?(pos)
        if board[pos]
            return false
        else
            true
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


    private
    attr_reader :board

end

board1 = Board.new
p board1
board1.move_piece([0,0], [4,4])


