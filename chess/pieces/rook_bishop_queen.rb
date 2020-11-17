module Slideable
    
    def initialize
        @HORIZONTAL_DIRS = []
        @DIAGONAL_DIRS = []
    end

    def horizontal_dirs
    end

    def diagonal_dirs
    end

    def moves
    end


    private 

    def move_dirs(overwrittter by subclass)
    end

    def grow_unblocked_moves_in_dirs(dx,dy)
    end

    attr_reader :@HORIZONTAL_DIRS, :@DIAGONAL_DIRS

end



class RookBishopQueen < Piece 
    include Slideable
    
    
    def initialize(color, board, pos=nil)
        super(color, board, pos)
    end

    def symbol 
    end


    private
    def move_dirs
    end

end 
