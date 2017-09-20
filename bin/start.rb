#!/usr/bin/env ruby
require '../tictactoe.rb'

initial_parametrs

while @players.include?@current_user
  puts "Player #{@current_user}"
  puts "Take square, e.g. a1, b3: "
  selected_move = gets.chomp
  puts check_taken_square(selected_move)
  puts save_move(selected_move)
  puts check_winner(@current_user)
  change_active_user(@current_user)

  puts "#{@board["a1"]} #{@board["a2"]}  #{@board["a3"]}"
  puts "#{@board["b1"]} #{@board["b2"]}  #{@board["b3"]}"
  puts "#{@board["c1"]} #{@board["c2"]}  #{@board["c3"]}"

end

puts "End of the game"
