
class BoardCase
    attr_accessor :position, :content


    def initialize(position)
        @position=position
        @content= ""
    end

def tick_a_case(symbol)
    if is_case_empty? == true
    @content = symbol
    else
        puts "veuillez rentrer un numéro ds une case vide, votre tour passe"
        
    end
end

def is_case_empty?
    if @content.empty?
    return true
    end
end

end