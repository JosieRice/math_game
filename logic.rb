class Logic
    attr_accessor :answer, :num1, :num2
    def initiate
        @num1 = 0
        @num2 = 0
        @answer = 0
    end

    def random_number
        [*1..20].sample
    end

    def question
        self.num1 = [*1..20].sample
        self.num2 = [*1..20].sample
        self.answer = num1 + num2
    end
end