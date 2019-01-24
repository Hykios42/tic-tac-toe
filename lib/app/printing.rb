class Printing
    def initialize
        puts "création outil de print"
    end

    def print_board(objBoard)
        puts "=" * 10

        puts "#{objBoard["a1"]} | #{objBoard["a2"]} | #{objBoard["a3"]}"
        puts "-" * 10
        puts "#{objBoard["b1"]} | #{objBoard["b2"]} | #{objBoard["b3"]}"
        puts "-" * 10
        puts "#{objBoard["c1"]} | #{objBoard["c2"]} | #{objBoard["c3"]}"
        puts "=" * 10
    end
end