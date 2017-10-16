#!/usr/bin/env ruby

require '../game.rb'

game_on = true
game = Game.new

while game_on
  puts "Player" + game.current_user
  puts "Take square, e.g. a1, b3:"
  selected_square = gets.chomp

  unless game.save_move(selected_square)
    puts "Ups.. Try again. Allowed moves: a1, a2, a3, b1, b2, b3, c1, c2, c3" 
    next
  end
    
  winner_info = game.display_final_status

  if winner_info
    game_on = false
    puts winner_info
  else 
    game.change_active_user
  end
  puts game.display_board
end

puts "End of the game"
