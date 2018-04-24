class Logic
    # access to all logic variables
    attr_accessor :answer, :num1, :num2
    # initiating math variables
    def initiate
        @num1 = 0
        @num2 = 0
        @answer = 0
    end

    # get and set numbers for addition math question
    def question
        self.num1 = [*1..20].sample
        self.num2 = [*1..20].sample
        self.answer = num1 + num2
    end

    # get and set numbers for multiplication question
    def multiplication
        self.num1 = [*1..10].sample
        self.num2 = [*1..10].sample
        self.answer = num1 * num2
    end
end