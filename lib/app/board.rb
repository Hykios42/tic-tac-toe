class Board
    attr_accessor       :line_1, :line_2, :line_3


    def initialize
        @my_board = {a1: " ", a2: " ", a3: " ", b1: " ", b2: "  ", b3: " ", c1: " ", c2: " ", c3: " " }
        puts "Création du plateau de jeu"
    end
end