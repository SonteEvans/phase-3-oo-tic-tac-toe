class TicTacToe
    attr_accessor :board
    #classVari
    WIN_COMBINATIONS = [
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [2,4,6]
    ]
    def initialize()
        @board = [" ", " ", " ", " ", " ", " ", " ", " "," "] #instanceVari
    end

    def display_board
        puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
        puts "-----------"
        puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
        puts "-----------"
        puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end
    def input_to_index(input)
        input.to_i - 1
    end
    def move(index, token)
     @board[index] = token
    end
    def position_taken?(index)
      if @board[index] != " "
            true
        else 
            false
        end
    end
    def valid_move?(index)
         index < 9 && position_taken?(index) == false 
    end 
    def turn_count
        @board.count{|square| square != " "}
    end
    def current_player
        turn_count.even? "X" : "O"
    end
end

test = TicTacToe.new #Creating A Instance Based On Class TicTacToe
puts test.board
test.display_board()
# test.input_to_index("2") 
# test.move(4,"X")

