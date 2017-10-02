#!/usr/bin/env ruby
require '../tictactoe.rb'

game_on = true
game = Game.new

while game_on
  puts "Player" + game.current_user
  puts "Take square, e.g. a1, b3:"
  selected_move = gets.chomp
  puts game.check_taken_square(selected_move)
  game.save_move(selected_move)

  winner_info = game.check_winner

  if winner_info
    game_on = false
    puts winner_info
  else 
    puts game.check_draw
    game.change_active_user
  end

  puts game.display_board
end

puts "End of the game"
