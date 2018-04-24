require_relative 'player'
require_relative 'logic'

class Game
    def initialize
        puts "Welcome to the math game"
        @player1 = Player.new
        @player2 = Player.new
        @logic = Logic.new
    end

    def play
        # puts "Welcome to the math game"
        player1_turn
        player2_turn
        end_game
        # Continue until one player is at 0 lives
    end

    def player1_turn
        @logic.question
        puts "Player 1: What does #{@logic.num1} plus #{@logic.num2} equal?"
        print "> "
        answer = $stdin.gets.chomp     
        if answer == "#{@logic.answer}"
            puts "That is correct"
            puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        else
            puts "That's incorrect"
            @player1.lives -= 1
            puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        end     
    end

    def player2_turn
        @logic.question
        puts "Player 2: What does #{@logic.num1} plus #{@logic.num2} equal?"
        # puts "#{@player1.lives -= 1}"
        print "> "
        answer = $stdin.gets.chomp     
        if answer == "#{@logic.answer}"
            puts "That is correct"
            puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        else
            puts "That's incorrect"
            @player2.lives -= 1
            puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
        end
    end

    def end_game
        if @player1.lives == 0 && @player2.lives == 0
            puts "It's a tie, you both need to work on your math skillz"
        elsif @player1.lives == 0
            puts "Player 1 loses."
        elsif @player2.lives == 0
            puts "Player 2 loses."
        else
           play
        end
    end
end