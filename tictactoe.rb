def tictactoe

  board = ["a1","b1","c1","a2","b2","c2","a3","b3","c3"]
  used_moves = []

  puts "Gracz X"
  puts "Podaj miejsce ruchu, np. a1, b3:"
  while
    
  selected_move=gets.chomp.to_s
  selected_move.downcase
  
    if used_moves.include? selected_move
      puts "Zajęte miejsce"
    elsif board.include?  selected_move
      used_moves.push(selected_move)
    else       
      puts "Zły ruch!"
    end

    puts used_moves
  end

end
