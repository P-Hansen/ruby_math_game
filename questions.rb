class Questions
    OPERATORS = [:+, :-]

    def initialize
        @num_1 = 0
        @num_2 = 0
        @operator = nil
    end

    def random_question
        @num_1 = rand(20)
        @num_2 = rand(20)
        @operator = OPERATORS.sample
        "What is #{@num_1} #{@operator} #{@num_2}"
    end

    def correct?(answer)
        correct_answer = @num_1.send(@operator, @num_2)
        correct_answer == answer ? true : false
    end
end