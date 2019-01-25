class Board
    attr_accessor       :board_case

    def initialize
        puts "Création du plateau de jeu"
        @board_case = {"a1" => " ", "a2" => " ", "a3" => " ", "b1" => " ", "b2" => " ", "b3" => " ", "c1" => " ", "c2" => " ", "c3" => " " }
        
    end

    def board_edit(playerEntry, playerID)
        @board_case[playerEntry] = playerID.char
    end

    # check si il y a un X ou un O dans le board, si elle contient un " " c'est quel est valide
    def already_a_char(board_case, case_to_check)
        if board_case[case_to_check] != " "
            puts "la case est déjà prise, bien essayer !"
            return false
        else
            return true
        end
    end

    def get_board_case
        return @board_case
    end
end