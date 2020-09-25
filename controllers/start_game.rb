require 'io/console'
# require_relative 'views/game'

def start_game
  case STDIN.getch
  when "e"
    puts "start"
  when "q"
    puts "the end"
  end
end
