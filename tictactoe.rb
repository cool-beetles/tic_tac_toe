def game
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

  players = ["Player X", "Player O"]
 

  puts "#{players[0]}"
  puts "Take square, e.g. a1, b3: "
while  selected_move_x=gets.chomp
  selected_move_position_x = moves.find_index(selected_move_x)
  selected_move_value_x = board[selected_move_position_x]

  board.each do |position, move|
    if (selected_move_value_x == "X") || (selected_move_value_x == "O")
      puts "Ivalid move!"
    elsif position == selected_move_position_x 
      board[selected_move_position_x] = "X"
      if ((board[0] == "X" && board[1] == "X" && board[2] == "X") ||
        (board[3] == "X" && board[4] == "X" && board[5] == "X") ||
        (board[6] == "X" && board[7] == "X" && board[8] == "X") ||
        (board[1] == "X" && board[4] == "X" && board[7] == "X") ||
        (board[0] == "X" && board[3] == "X" && board[6] == "X") ||
        (board[0] == "X" && board[1] == "X" && board[2] == "X") ||
        (board[2] == "X" && board[5] == "X" && board[8] == "X") ||
        (board[0] == "X" && board[4] == "X" && board[8] == "X") ||
        (board[6] == "X" && board[4] == "X" && board[2] == "X"))
        puts "The winner is: #{players[0]}"
      end
    end
  end

  puts "#{board[0]}, #{board[1]},  #{board[2]}"
  puts "#{board[3]}, #{board[4]},  #{board[5]}"
  puts "#{board[6]}, #{board[7]},  #{board[8]}"

=begin
   
  puts "#{players[1]}"
  puts "Take square, e.g. a1, b3: "
  selected_move_o=gets.chomp
  selected_move_position_o = moves.find_index(selected_move_o)
  selected_move_value_o = board[selected_move_position_o]

  board.each do |position, move|
    if (selected_move_value_o == "O") || (selected_move_value_o == "X")
      puts "Ivalid move!"
    else position == selected_move_position_o 
      board[selected_move_position_o] = "O"
      if ((board[0] == "O" && board[1] == "O" && board[2] == "O") ||
        (board[3] == "O" && board[4] == "O" && board[5] == "O") ||
        (board[6] == "O" && board[7] == "O" && board[8] == "O") ||
        (board[1] == "O" && board[4] == "O" && board[7] == "O") ||
        (board[0] == "O" && board[3] == "O" && board[6] == "O") ||
        (board[0] == "O" && board[1] == "O" && board[2] == "O") ||
        (board[2] == "O" && board[5] == "O" && board[8] == "O") ||
        (board[0] == "O" && board[4] == "O" && board[8] == "O") ||
        (board[6] == "O" && board[4] == "O" && board[2] == "O"))
        puts "The winner is #{players[1]}" 
      end
    end
  end

puts "#{board[0]}, #{board[1]},  #{board[2]}"
puts "#{board[3]}, #{board[4]},  #{board[5]}"
puts "#{board[6]}, #{board[7]},  #{board[8]}"
=end
end

rescue 
  puts  "Allowed moves: #{moves}"
end

game
