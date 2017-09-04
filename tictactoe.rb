def user
  moves = ['a1','a2','a3','b1','b2','b3','c1','c2','c3']
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

  puts "Player X"
  puts "Take square, ex. a1, b3:"
while  selected_move=gets.chomp.to_s

  selected_move_position = moves.find_index(selected_move)
  board.each do |position, move|
    if move == "X"
      puts "Ivalid move!"
    else position == selected_move_position
      board[selected_move_position] = "X"
    end
  end
end 

  return board
rescue
  return "Allowed moves: #{moves}"
end
