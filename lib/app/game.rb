require 'joueur'
require 'board'
require 'printing'

class Game
    @@number_games = 0
    @victoire = false
    @board_full = false
    
    def initialize
        puts "Création d'une partie"
        @my_print = Printing.new
        @joueur_1 = Joueur.new
      #  @joueur_1.player_name_empty
        puts "Bienvenue  #{@joueur_1.name}"
        @joueur_2 = Joueur.new
       # @joueur_2.player_name_empty
        puts "Bienvenue  #{@joueur_2.name}"
        @my_board = Board.new
        puts "Partie configurer !"
        puts "#{@joueur_1.name} VS #{@joueur_2.name}"

        while @victoire != true && @board_full != true
        
        end
    end

end