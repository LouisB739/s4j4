
class Player
    attr_accessor :name, :symbol
    
    @@player_array = []

    def initialize(name,symbol)
        @name = name
        @symbol = symbol
        @@player_array << self
    end

    def choose_symbol(symbol)
        @symbol = symbol
    end
    

end

