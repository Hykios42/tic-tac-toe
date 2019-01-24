class Joueur
    attr_accessor       :name

    @@player_list = []

    def initialize
        puts "Création d'un joueur"
        @score = 0
        get_user_name
        if player_name_empty
            @@player_list << self
        end
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
end
