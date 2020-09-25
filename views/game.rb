def game
  # now = Time.now
  # counter = 0
  # loop do
  #   if Time.now < now + counter
  #     next
  #   else
  #     snake.insert_body(board)
  #     board.print_board
  #     snake_controller
  #     system("clear")
  #   end
  #   counter += 1
  #   break if counter > 10
  # end

  require_relative '../models/board'
  require_relative '../models/snake'
  require_relative '../models/food'
  
  board = Board.new
  snake = Snake.new
  food = Food.new
  
  board.print_board
  # food.insert_food


end

game