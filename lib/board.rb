
class Board
    attr_accessor :board, :solutions, :positionsX, :positionsO

    def initialize
        @board = array_of_board_case
        @solutions =[[1,2,3],[1,4,7],[3,6,9],[7,8,9],[3,5,7],[1,5,9],[2,5,7],[4,5,6]]
        @positionsX = ""
        @positionsO = ""

    end

    def display_board
        puts "          #{@board[0].content}     |           #{@board[1].content}          |           #{@board[2].content}           |"
        puts ".................................................................."
        puts "          #{@board[3].content}     |           #{@board[4].content}          |           #{@board[5].content}           |"
        puts ".................................................................."
        puts "          #{@board[6].content}     |           #{@board[7].content}          |           #{@board[8].content}           |"
        puts ".................................................................."
    end

    def array_of_board_case()
        array = []
        for i in 1..9
            array.push(BoardCase.new(i))
        end
        return array
    end

    def change_tick(case_number,symbol)
        # change la case jouée en fonction de ce qu'a joué le joueur (X, ou O)
        "Quelle case?"
        @board[case_number.to_i].tick_a_case(symbol)
        end
      

      def is_victory
        i=0
        @positionsX = return_position_tickles("x")
        @positionsO = return_position_tickles("o")
for i in 0..8
    if  ((@solutions[i] & @positionsX) == @solutions[i] )  || ((@solutions[i] & @positionsO) == @solutions[i] )
        puts " C'est fini un joueur a remporté la partie ! "
        display_board
        return true
        else
        i += 1
        end
        
      end
    end

    #donne les positions actuelles d'un joueur en fonction du symbole

    def return_position_tickles(symbol)
        position_array = []
        for boardcase in @board
            if boardcase.content == symbol.to_s
               position_array << boardcase.position 
            end
        end
        return position_array
    end



end

