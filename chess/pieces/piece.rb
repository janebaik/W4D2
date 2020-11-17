class Piece 
#   a  b  c  d  e  f  g  h  i  j
# [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 8
#  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 7
#  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 6
#  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 5
#  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 4
#  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 3
#  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], 2
#  [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]] 1

    def initialize(color, board, pos=nil)  #took out board because idk what to do with it 
        @color = :symbol
        @board = board
        @pos = []
        # Write code for #initialize so we can setup the board with instances of Piece 
        # in locations where a Queen/Rook/Knight/ etc. will start and nil where the NullPiece will start.
        # At the beginning of the game, the pieces are arranged as shown in the diagram: 
            # for each side one king, one queen, two rooks, two bishops, two knights, and eight pawns. 
            # The pieces are placed, one on a square, as follows:
                    # The rooks are placed on the outside corners, right and left edge.
                    # The knights are placed immediately inside of the rooks.
                    # The bishops are placed immediately inside of the knights.
                    # The queen is placed on the central square of the same color of that of the player: white queen on the white square and black queen on the black square.
                    # The king takes the vacant spot next to the queen.
                    # The pawns are placed one square in front of all of the other pieces.
    end
    
    attr_reader :color, :board, :pos

    def to_s
    end

    def empty?
    end

    def valid_moves
    end

    def pos=(val)
    end

    def Symbol 
    end

    private
    def move_into_check!(end_pos)
    end

end
