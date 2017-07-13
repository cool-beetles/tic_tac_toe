def tictactoe (string)
  board = ["a1","b1","c1","a2","b2","c2","a3","b3","c3"]
  used_moves = []

  puts "Gracz X"
  puts "Podaj miejsce ruchu, np. a1, b3:"
  selected_move=gets.chomp
  selected_move.downcase
  used_moves.push(selected_move)
  puts used_moves
  
end 
