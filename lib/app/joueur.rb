class Joueur
    attr_accessor       :name, :char
    
    @@nb_user = 0

    @@player_list = []

    def initialize
        puts "Création d'un joueur"
        @score = 0
        get_user_name
        if player_name_empty
            @@player_list << self
        end
        @@nb_user += 1
        set_player_char
    end

    def get_user_name
        puts "Quel est ton pseudo ?"
        @name = gets.chomp
    end

    def player_name_empty
        if self.name == ""
            puts "Il faut entré un pseudo"
            @name = get_user_name
            return false
        else
            puts "Pseudo OK"
            return true
        end
    end

    def set_player_char
        if @@nb_user == 1
            self.char = "X"
        else 
            self.char = "O"
        end
    end
end
