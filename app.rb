

require 'bundler'
require 'rubygems'


$:.unshift File.expand_path("./../lib/", __FILE__)

require'boardcase'
require'player'
require 'board'
require'pry'
require'game'


class App
    attr_accessor :game

    def initialize
        @game = Game.new
        puts "Voici le tableau de jeu. Chaque case est numéroté dans l'odre..."
        @game.display_board

    end
        def launch_round
            until game.get_count_number == 9
                game.play_turn(game.current_player)
                game.display_board
            end
            if game.get_count_number == 9
               puts "EGALITE"
            end
        end


end


    app = App.new
    app.launch_round

