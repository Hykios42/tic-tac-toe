class Board
    attr_accessor       :line_1, :line_2, :line_3


    def initialize
        @line_1 = {a1: " ", b1: " ", c1: " "}
        @line_2 = {a2: " ", b2: " ", c2: " "}
        @line_3 = {a3: " ", b3: " ", c3: " "}

        @my_board = {a1: " ", a2: " ", a3: " ", b1: " ", b2: "  ", b3: " ", c1: " ", c2: " ", c3: " " }
        
        puts "Création du plateau de jeu"
    end
end