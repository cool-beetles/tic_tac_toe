def game
  players = ["Player X", "Player O"]
  board = {
    "a1" => "",
    "a2" => "",
    "a3" => "",
    "b1" => "",
    "b2" => "",
    "b3" => "",
    "c1" => "",
    "c2" => "",
    "c3" => "" 
  }
 
  puts "#{players[0]}"
  puts "Take square, e.g. a1, b3: "
  while  selected_move_x = gets.chomp

    if (board[selected_move_x] == "X") || (board[selected_move_x] == "O")
      puts "Ivalid move!"
    elsif board[selected_move_x] = "X"
      
      if ((board["a1"] == "X" && board["a2"] == "X" && board["a3"] == "X") ||
        (board["b1"] == "X" && board["b2"] == "X" && board["b3"] == "X") ||
        (board["c1"] == "X" && board["c2"] == "X" && board["c3"] == "X") ||
        (board["a2"] == "X" && board["b2"] == "X" && board["c2"] == "X") ||
        (board["a1"] == "X" && board["b1"] == "X" && board["c1"] == "X") ||
        (board["a1"] == "X" && board["a2"] == "X" && board["a3"] == "X") ||
        (board["a3"] == "X" && board["b3"] == "X" && board["c3"] == "X") ||
        (board["a1"] == "X" && board["b2"] == "X" && board["c3"] == "X") ||
        (board["c1"] == "X" && board["b2"] == "X" && board["a3"] == "X"))
        return "The winner is: #{players[0]}"
      end
    end

  puts "#{board["a1"]} #{board["a2"]}  #{board["a3"]}"
  puts "#{board["b1"]} #{board["b2"]}  #{board["b3"]}"
  puts "#{board["c1"]} #{board["c2"]}  #{board["c3"]}"
  end

rescue
  return "Allowed moves: #{board.keys}"
end
