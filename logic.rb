class Logic
    attr_accessor :answer, :num1, :num2
    def initiate
        @num1 = 0
        @num2 = 0
        @answer = 0
    end

    # def question_generator
    #     "Player x: What is"
    # end

    def random_number
        [*1..20].sample
    end

    def question
        self.num1 = random_number
        self.num2 = random_number
        self.answer = num1 + num2
        return num1, num2, answer
    end

end

# logic = Logic.new

# p logic.question
# p logic.answer
# p logic.num1
# p logic.num2
