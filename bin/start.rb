#!/usr/bin/env ruby
require '../tictactoe.rb'

game_on = true
initial_parametrs

while game_on
  puts "Player #{@current_user}"
  puts "Take square, e.g. a1, b3:"
  selected_move = gets.chomp
  puts check_taken_square(selected_move)
  check_taken_square(selected_move)
  puts save_move(selected_move)
  puts check_winner

  if check_winner
    game_on = false
  else 
    puts check_draw
    change_active_user(@current_user)
  end

  puts display_board
end

puts "End of the game"
