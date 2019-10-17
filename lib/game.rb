class Game
    attr_accessor :player1, :player2, :board, :current_player

    @@count_number = 0
    @@solution = [[1,2,3],[1,4,7],[3,6,9],[7,8,9],[3,5,7],[1,5,9],[2,5,7],[4,5,6]]


    def initialize()
        system'clear'
        puts "Bienvenue"
        
        puts "Comment vous appelez vous?"
        name = gets.chomp.to_s
        puts "Quelle symbole voulez vous jouer? x ou o ?"
       
        symbol = gets.chomp.to_s
        until symbol == "x" || symbol == "o"
            puts "Non tjr pas, choisis x ou o"
            symbol = gets.chomp.to_s
        end
        if symbol == "x"
            symbol2 = "o"
        else
            symbol2 = "x"
        end
        puts "Comment s'appelle votre adversaire?"
        name2 = gets.chomp.to_s


        @board = Board.new
        @player1 = Player.new(name,symbol)
        @player2 = Player.new(name2,symbol2)

        puts "Attention qui va commencer ..."
        sleep(3)
        dice = rand(1..10)
        if dice > 5
            @current_player= @player1
            @not_current_player = @player2
        else
            @current_player = @player2
            @not_current_player = @player1
    end
    puts "c'est #{@current_player.name} qui commence"
end


    def display_board
        @board.display_board
    end


    def play_turn(player) 
        puts "<"
        puts "A #{player.name} de jouer, choisissez un numéro de case entre 1 et 9"
        position = gets.chomp.to_i
        @board.change_tick(position - 1 , player.symbol) 
        puts "Tu as choisi la case #{position}"

        if @board.is_victory == true
            "#{player.name}a gagné"
            exit
        elsif @board.is_victory !=true
            if @current_player == @player1
                @current_player = @player2
            elsif @current_player == @player2
                @current_player = @player1
            end
            @@count_number = @@count_number + 1
        end
    end


    def get_count_number
        return @@count_number
    end



    

end