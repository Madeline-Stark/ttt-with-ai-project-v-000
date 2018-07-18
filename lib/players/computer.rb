module Players
  class Computer < Player

    def move(board)
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
      if !board.taken?(choice = rand(2,4,6,8)) 
        choice 
      else
        try_again
      end 
    end 

  end
end

