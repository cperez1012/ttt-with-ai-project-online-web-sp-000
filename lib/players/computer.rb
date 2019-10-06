module Players
  class Computer < Player
     def initialize(token)
      @token = token
    end
     def move(board)
      sleep(1)
      if !board.taken?("5")
        "5"
      elsif board.position("5") != self.token && board.turn_count == 1
        ["1", "3", "7", "9"].sample
      elsif board.position("6") == self.token && board.turn_count == 2
        if !board.taken?("1")
          "1"
        elsif !board.taken?("3")
          "3"
        elsif !board.taken?("7")
          "7"
        elsif !board.taken?("9")
          "9"
        end
      elsif !board.taken?("3")
        "3"
      elsif !board.taken?("9")
        "9"
      elsif !board.taken?("2")
        "2"
      elsif !board.taken?("8")
        "8"
      elsif !board.taken?("1")
        "1"
      elsif !board.taken?("6")
        "6"
      elsif !board.taken?("7")
        "7"
      elsif !board.taken?("4")
        "4"
      elsif !board.taken?("5")
        "5"
      end
    end
  end
end
