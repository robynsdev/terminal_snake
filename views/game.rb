def game
  now = Time.now
  counter = 0
  loop do
    if Time.now < now + counter
      next
    else
      snake.insert_body(board)
      board.print_board
      snake_controller
      system("clear")
    end
    counter += 1
    break if counter > 10
  end
end