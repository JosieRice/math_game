class Player
    @@num_of_players = 0
    attr_accessor :lives, :score
    # Getters and Setters for both
    def initialize
        
        @lives = 3
        @score = 0
    end
end


# Turn
# Scoring