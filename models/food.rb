class Food
  # randomise food location within board
  def rand_x
    rand(1..20)
  end

  def rand_y
    rand(2..30)
  end

  # if space is empty, randomise and insert food
  # else randomise again
  def insert_food(board)
    x = rand_x
    y = rand_y
    if board.board[x][y] == nil
      board.board[x].insert(y, '⚪️')
      board.board[x].delete_at(y-1)
    else
      insert_food(board)
    end
  end
end
