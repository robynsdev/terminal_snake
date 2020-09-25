class Food

  # def initialize
  #   @food = '⚪️'
  # end  

  # randomise food location within board
  def rand_x
    rand(1..20)
  end

  def rand_y
    rand(1..29)
  end


  def insert_food
    # if board.board[1][1] == nil
    board.board[seg[0]].insert(seg[1], '⚪️')
    board.board[seg[0]].delete_at(seg[1]-1)
    # end
  end

end
