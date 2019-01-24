require 'joueur'
require 'board'

class Game
    @@number_games = 0


    def initialize
        @joueur_1 = Joueur.new
        @joueur_2 = Joueur.new
        @my_board = Board.new
        puts "Création d'une partie"
    end
end