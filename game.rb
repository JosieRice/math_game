require_relative 'player'
require_relative 'logic'

# sets up the game sequence
class Game
    # loads up players and math logic as well as welcome message at start
    def initialize
        puts "Welcome to the math game"
        @player1 = Player.new("Player 1")
        @player2 = Player.new("Player 2")
        @logic = Logic.new
    end

    # play sequence, player 1 turn, then player 2 turn, then a check if the game is over
    def play
        puts "-----NEW TURN-----"
        addition @player1, @player2
        addition @player2, @player1
        end_game_check
    end

    def stage2
        puts "I'm in stage 2"
    end

    # one turn for one player, params put in reverse for opponents turn
    def addition player1, player2
        @logic.question
        puts "#{player1.name}: What does #{@logic.num1} plus #{@logic.num2} equal?"
        print "> "
        answer = $stdin.gets.chomp   
        if answer == "#{@logic.answer}"
            puts "#{answer} is correct"
            player1.score += 1
            puts "#{player1.name}: #{player1.score} correct"
        else
            puts "#{answer} is incorrect"
            player1.lives -= 1
            puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
        end     
    end

    # The check to see if one of the players is at 0 lives, if not, take another turn
    def end_game_check
        if @player1.lives == 0 && @player2.lives == 0
            puts "-----GAME OVER-----"
            puts "It's a tie, you both need to work on your math skills"
        elsif @player1.lives == 0
            puts "-----GAME OVER-----"
            puts "Player 1 loses."
        elsif @player2.lives == 0
            puts "-----GAME OVER-----"
            puts "Player 2 loses."
        else
           play
        end
    end
end