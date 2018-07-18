module Players
  class Computer < Player
    attr_accessor :board

    def move(board)
      @board = board
      if !board.taken?(5)
        choice = 5
      elsif !board.taken?(1)
        choice = 1
      elsif !board.taken?(3)
        choice = 3
      elsif !board.taken?(7)
        choice = 7
      elsif !board.taken?(9)
        choice = 9
      else
        try_again
      end
      "#{choice}"
    end

    def try_again
      #options = [2, 4, 6, 8]
      if !board.taken?(choice = rand(2..8)) #(choice = rand(options))
        choice
      else
        #options.remove(choice)
        try_again
      end
    end

  end
end
