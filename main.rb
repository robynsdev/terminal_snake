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

require_relative 'views/title'
require_relative 'views/get_name'
require_relative 'controllers/start_game'



title
get_name
start_game
# high_score

