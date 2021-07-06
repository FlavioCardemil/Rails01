class Card

    attr_accessor :number, :kind

    def initialize(number, kind)
        
        if (number >= 1 && number <= 13) && ["C", "D", "E", "T"].include?(kind)

            @number = number
            @kind = kind
    
        else
            raise "na que vers"
        end
    end
    def to_s
        "numero #{self.number}, pinta #{self.kind}"
    end
end

results = []

5.times { |i| results << Card.new(rand(1..13), ["C", "D", "E", "T"].sample)}

puts results
