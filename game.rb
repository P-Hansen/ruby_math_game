class Game

    def initialize(p1, p2)
        @player_1 = p1
        @player_2 = p2
        @players = [@player_1, @player_2]
        @turn = 0
    end

    def current_player?
        @players[@turn]
    end

    def turn_over
        @turn += 1
        if @turn > @players.length - 1
            @turn = 0
        end
    end

    def final_score
        sorted = @players.sort_by {|player| -player.score}
        puts "***Congratulations #{sorted[0].name}! you win!!***"
    end
end