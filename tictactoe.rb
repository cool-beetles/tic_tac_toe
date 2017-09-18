def game
  players = ["X", "O"]
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


  current_user = players[0]
  puts "Player #{current_user}"
  puts "Take square, e.g. a1, b3: "
while  selected_move = gets.chomp

    if (board[selected_move] == "X") || (board[selected_move] == "O")
      puts "Ivalid move!"
    else 
      board[selected_move] = "#{current_user}"
      
      if ((board["a1"] == ("X" || "O") && board["a2"] == ("X" || "O") && board["a3"] == ("X" || "O")) ||
        (board["b1"] == ("X" || "O") && board["b2"] == ("X" || "O") && board["b3"] == ("X" || "O")) ||
        (board["c1"] == ("X" || "O") && board["c2"] == ("X" || "O") && board["c3"] == ("X" || "O")) ||
        (board["a2"] == ("X" || "O") && board["b2"] == ("X" || "O") && board["c2"] == ("X" || "O")) ||
        (board["a1"] == ("X" || "O") && board["b1"] == ("X" || "O") && board["c1"] == ("X" || "O")) ||
        (board["a1"] == ("X" || "O") && board["a2"] == ("X" || "O") && board["a3"] == ("X" || "O")) ||
        (board["a3"] == ("X" || "O") && board["b3"] == ("X" || "O") && board["c3"] == ("X" || "O")) ||
        (board["a1"] == ("X" || "O") && board["b2"] == ("X" || "O") && board["c3"] == ("X" || "O")) ||
        (board["c1"] == ("X" || "O") && board["b2"] == ("X" || "O") && board["a3"] == ("X" || "O")))
        puts "The winner is: #{current_user}"  
      end
  #zmiana gracza
      current_user = players[1]
      puts "Player #{current_user}"
      puts "Take square, e.g. a1, b3: "

    end

  puts "#{board["a1"]} #{board["a2"]}  #{board["a3"]}"
  puts "#{board["b1"]} #{board["b2"]}  #{board["b3"]}"
  puts "#{board["c1"]} #{board["c2"]}  #{board["c3"]}"
  end

rescue
  return "Allowed moves: #{board.keys}"
end
