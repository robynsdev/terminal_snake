class Snake
  attr_accessor :move

  def initialize
    @snake = [[10, 12], [10, 11], [10, 10]]
    @move = [1, 0]
  end

  def insert_snake(board)
    @snake.each do |seg|
      board.board[seg[0]][seg[1]] = '🟣'
    end
  end

  def move
    # new head
    head = @snake[0]
    head[0] = head[0] + @move[0]
    head[1] = head[1] + @move[1]
    p head
    # if @board[2..30].product([2..21]) || head ==   
    printf("\033[H\033[J");
    
  end


  # movement
  def move_up(board, food)
    nxt = board.board[head[0]][head[1]]
    
    case nxt == nil
    when nil
      snake.unshift(head[0] - 1, head[1])
      snake.pop
    end
  end

  def move_left
    snake.unshift([head[0], head[1]-1])
    snake.pop
    
    tail
  end

  def move_down
    snake.unshift([head[0]+1, head[1]])
    snake.pop
  
  end

  def move_right
    snake.unshift([head[0], head[1]+1])
    snake.pop
  
  end

  # remove last snake segment to simulate movement
  def tail
    board[snake[-1][0]].insert(snake[-1][1], nil)
    board[snake[-1][0]].delete_at(snake[-1][1]+1)
  end 
  
end

# test
# snake = Snake.new
# snake.move