require 'io/console'
require '../models/snake'


def snake_controller
  case STDIN.getch
  when "w"
    # snake.move_up(board, food)
    @move = [0, -1] if @move != [0, 1]
  when "a"
    @move = [-1, 0] if @move != [1, 0]
  when "s"
    @move = [0, 1] if @move != [0, -1]
  when "d"
    @move = [1, 0] if @move != [-1, 0]
  when "q"
    puts "the end"
  end
end

# def snake_controller
#   case STDIN.getch
#   when "w"
#     snake.move_up(board, food)
#   when "a"
#     snake.move_left
#   when "s"
#     snake.move_down
#   when "d"
#     snake.move_right
#   when "q"
#     puts "the end"
#   end
# end