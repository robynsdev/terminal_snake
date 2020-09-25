# psuedocode

# board_model
# loop clear on timer

# get_name
# "Enter your name" > saves to variable

# play_snake
#   snake_model 3 characters
#     starting position
#     input movement wasd

#     ***sprinkles*** increase movement speed with each food eaten

#   food_model 1 character randomly placed

#   collision_action
#     collision with board_model
#       game_over
#     collision with snake_body
#       game_over
#     collision with food_model


# game_over
# "Congratulations #{name}" + scoreboard || "Awww #{name}, you suck. \nTry again?"


# high_scores
# print top 5 scores 


# ⚉
# ⚈
# ⚆
# ⚇
# 🟣🟣🟣
# 🟪🟪🟪

# ⚪️🔲🔳⬜️◻️◽️▫️

require_relative 'models/board'
require_relative 'models/snake'

board = Board.new
board.print_board

# now = Time.now
# counter = 0.1
# loop do
#   if Time.now < now + counter
#     next
#   else
#     puts "counting another #{counter} ..."
#   end
#   counter += 0.3
#   break if counter > 30
# end