def board
  moves = ["a1","a2","a3","b1","b2","b3","c1","c2","c3"]
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

  # winning = [[0,1,2],[3,4,5],[6,7,8],[0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]

  puts "Player X"
  puts "Take square, e.g. a1, b3: "
  while  
  selected_move_x=gets.chomp
  selected_move_position = moves.find_index(selected_move_x)
  selected_move_value = board[selected_move_position]

  board.each do |position, move|
    if selected_move_value == "X"
      puts "Ivalid move!"
    else position == selected_move_position
      board[selected_move_position] = "X"

      if ((board[0] == "X" && board[1] =="X" && board[2] == "X") ||
        (board[3] == "X" && board[4] == "X" && board[5] == "X") ||
        (board[6] == "X" && board[7] == "X" && board[8] == "X") ||
        (board[0] == "X" && board[3] == "X" && board[6] == "X") ||
        (board[1] == "X" && board[4] == "X" && board[7] == "X") ||
        (board[2] == "X" && board[5] == "X" && board[8] == "X") ||
        (board[0] == "X" && board[4] == "X" && board[8] == "X") ||
        (board[6] == "X" && board[4] == "X" && board[2] == "X"))
        puts "The winner is:"
      end
    end
  end

#  return board
  end



#rescue "Allowed moves: #{moves}"
end
