#!/usr/bin/env ruby

require '../game.rb'

game_on = true
game = Game.new

puts "Hello! It's TicTacToe game. Let's play!"
while game_on
  puts "\n"
  puts "Player" + game.current_user
  puts "Take square, e.g. a1, b3:"
  selected_square = gets.chomp

  unless game.save_move(selected_square)
    puts "Ups.. Try again -> Allowed moves: a1, a2, a3, b1, b2, b3, c1, c2, c3" 
    next
  end
    
  winner_info = game.display_final_status

  if winner_info
    game_on = false
  else 
    game.change_active_user
  end

  puts game.display_board
end

puts "\n" + winner_info + " :)" + "\nEnd of the game. Thank You!"
