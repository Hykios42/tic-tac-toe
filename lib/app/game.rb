require 'joueur'
require 'board'
require 'printing'

class Game

    attr_accessor       :board_full, :turn, :victoire

    @@number_games = 0

    
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
        @board_full = false
        @victoire = false
        @turn = 0
    end

    def game_loop
        @my_print.print_board(@my_board.board_case)
        while @board_full != true && @victoire != true
            play_one_user(@joueur_1, @my_board, @my_print, self)
            if end_9_turn != true
                play_one_user(@joueur_2, @my_board, @my_print, self)
            else
                @board_full = true
            end
        end

    end
    

    def turn_up
        @turn += 1
    end

    def end_9_turn
        if @turn == 9
            puts "Fin de partie"
            puts "Egalite"
            return true
        end
    end

    def play_one_user(obj_player, obj_board, obj_print,obj_game)
        puts "#{obj_player.name} à toi ! quel case veut-tu jouer ? (format : a1 / a2 / a3 / etc...)"
        player_1_entry = gets.chomp
        if obj_board.already_a_char(obj_board.board_case, player_1_entry) == false
            puts "try again !"
            play_one_user(obj_player, obj_board, obj_print, obj_game)
        else
            obj_board.board_edit(player_1_entry, obj_player)
            obj_print.print_board(obj_board.board_case)
            turn_up
            victory(obj_board.get_board_case)
        end

    end

    def set_victoire
        @victoire = true
    end

    def victory(board_case)
        if check_line(board_case) == true || check_column(board_case) == true  || check_diagonal(board_case) == true
            @victoire = true
        end
    end

    def check_line(board_case)
        if (board_case["a1"] == "X" && board_case["a2"] == "X" && board_case["a3"] == "X") || (board_case["a1"] == "O" && board_case["a2"] == "O" && board_case["a3"] == "O")
            puts "VICTOIRE !"
            return true
        elsif  (board_case["b1"] == "X" && board_case["b2"] == "X" && board_case["b3"] == "X") || (board_case["b1"] == "O" && board_case["b2"] == "O" && board_case["b3"] == "O")
            puts "VICTOIRE !"
            return true
        elsif  (board_case["c1"] == "X" && board_case["c2"] == "X" && board_case["c3"] == "X") || (board_case["c1"] == "O" && board_case["c2"] == "O" && board_case["c3"] == "O")
            puts "Victoire !"
            return true 
        end
    end

    def check_column(board_case)
        if (board_case["a1"] == "X" && board_case["b1"] == "X" && board_case["c1"] == "X") || (board_case["a1"] == "O" && board_case["b1"] == "O" && board_case["c1"] == "O")
            puts "VICTOIRE !"
            return true
        elsif  (board_case["a2"] == "X" && board_case["b2"] == "X" && board_case["c2"] == "X") || (board_case["a2"] == "O" && board_case["b2"] == "O" && board_case["c2"] == "O")
            puts "VICTOIRE !"
            return true
        elsif  (board_case["a3"] == "X" && board_case["b3"] == "X" && board_case["c3"] == "X") || (board_case["a3"] == "O" && board_case["b3"] == "O" && board_case["c3"] == "O")
            puts "Victoire !"
            return true 
        end
    end

    def check_diagonal(board_case)
        if (board_case["a1"] == "X" && board_case["b2"] == "X" && board_case["c3"] == "X") || (board_case["a1"] == "O" && board_case["b2"] == "O" && board_case["c3"] == "O")
            puts "VICTOIRE !"
            return true
        elsif (board_case["c1"] == "X" && board_case["b2"] == "X" && board_case["a3"] == "X") || (board_case["c1"] == "O" && board_case["b2"] == "O" && board_case["a3"] == "O")
            puts "VICTOIRE !"
            return true
        end
    end
end