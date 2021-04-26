require './player.rb'
require './game.rb'
require './questions'

player_1 = Player.new("Math Joe")
player_2 = Player.new("Math Jane")
questions = Questions.new
game = Game.new(player_1, player_2)

# main game loop
while player_1.score > 0 && player_2.score > 0 do
    # ask current player a question and prompt for answer
    puts "--- okay #{game.current_player?.name} it's your turn! ---"
    puts questions.random_question
    answer = gets.chomp.to_i
    # check answer
    if questions.correct?(answer) 
        puts "Correct!"
    else
        puts "False!"
        game.current_player?.score -= 1
    end
    # show score and pass the turn
    puts "it's a tight game!"
    puts "#{player_1.name} #{player_1.score} vs #{player_2.name} #{player_2.score}"
    game.turn_over
end

game.final_score