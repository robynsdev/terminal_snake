require 'io/console'

def snake_controller
  case STDIN.getch
  when "w"
    ::Snake.move_up
  when "a"
    ::Snake.move_left
  when "s"
    ::Snake.move_down
  when "d"
    ::Snake.move_right
  when "q"
    puts "the end"
  end
end