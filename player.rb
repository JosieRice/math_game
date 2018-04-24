class Player
    # get and set access to player variables
    attr_accessor :lives, :score, :name
    # initialize name and default lives and score
    def initialize(name) 
        @name = name      
        @lives = 3
        @score = 0
    end
end