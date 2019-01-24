require 'game'

class Tic
    def initialize
        puts "Bienvenue dans le Tic Tac Toe des mages noirs de MTP"
        @my_game = Game.new
    end

    def perform
        @my_game.game_loop
    end
end
