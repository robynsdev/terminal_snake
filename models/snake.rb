

class Snake

  def initialize
    @body = [[10, 10], [10, 11], [10, 12]]
  end

  def insert_body
    body.each do |seg|
      board[seg[0]].insert(seg[1], "🟣")
      board[seg[0]].delete_at(seg[1]-1)
    end
  end

  # movement
  def move_up
    body.unshift([body[0][0]-1, body[0][1]])
    body.delete_at(-1)
  
  end

  def move_left
    body.unshift([body[0][0], body[0][1]-1])
    body.pop
  
  end

  def move_down
    body.unshift([body[0][0]+1, body[0][1]])
    body.pop
  
  end

  def move_right
    body.unshift([body[0][0], body[0][1]+1])
    body.pop
  
  end

  def tail
    board[body[-1][0]].insert(body[-1][1], nil)
    board[body[-1][0]].delete_at(body[-1][1]+1)
  end 
  

end
