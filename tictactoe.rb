def user
  board_array = ['a1','a2','a3','b1','b2','b3','c1','c2','c3']
  board = {
    0 => "a1",
    1 => "a2",
    2 => "a3",
    3 => "b1",
    4 => "b2",
    5 => "b3",
    6 => "c1",
    7 => "c2",
    8 => "c3" 
  }

  puts "Gracz X"
  puts "Podaj miejsce ruchu, np. a1, b3:"
    while
  selected_move=gets.chomp.to_s
  selected_move_position = board_array.find_index(selected_move)
  board[selected_move_position] = "X"
  return board
end  
end

