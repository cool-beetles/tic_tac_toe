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
    return "Ivalid move!"
  elsif board.include?(selected_move)
    board[selected_move] = "#{current_user}"

    if ((board["a1"] == ("#{current_user}") && board["a2"] == ("#{current_user}") && board["a3"] == ("#{current_user}")) ||
      (board["b1"] == ("#{current_user}") && board["b2"] == ("#{current_user}") && board["b3"] == ("#{current_user}")) ||
      (board["c1"] == ("#{current_user}") && board["c2"] == ("#{current_user}") && board["c3"] == ("#{current_user}")) ||
      (board["a2"] == ("#{current_user}") && board["b2"] == ("#{current_user}") && board["c2"] == ("#{current_user}")) ||
      (board["a1"] == ("#{current_user}") && board["b1"] == ("#{current_user}") && board["c1"] == ("#{current_user}")) ||
      (board["a1"] == ("#{current_user}") && board["a2"] == ("#{current_user}") && board["a3"] == ("#{current_user}")) ||
      (board["a3"] == ("#{current_user}") && board["b3"] == ("#{current_user}") && board["c3"] == ("#{current_user}")) ||
      (board["a1"] == ("#{current_user}") && board["b2"] == ("#{current_user}") && board["c3"] == ("#{current_user}")) ||
      (board["c1"] == ("#{current_user}") && board["b2"] == ("#{current_user}") && board["a3"] == ("#{current_user}")))
      return "The winner is: #{current_user}" 
    elsif ((board["a1"] != ("")) && (board["a2"] != ("")) && (board["a3"] != ("")) &&
      (board["b1"] != ("")) && (board["b2"] != ("")) && (board["b3"] != ("")) &&
      (board["c1"] != ("")) && (board["c2"] != ("")) && (board["c3"] != ("")))
      return "It's a draw"
    end

    if current_user == players[0]
      current_user = players[1]
    else
      current_user = players[0]
    end

  puts "Player #{current_user}"
  puts "Take square, e.g. a1, b3: "
  
  else
    puts "Allowed moves #{board.keys}"
  end

  puts "#{board["a1"]} #{board["a2"]}  #{board["a3"]}"
  puts "#{board["b1"]} #{board["b2"]}  #{board["b3"]}"
  puts "#{board["c1"]} #{board["c2"]}  #{board["c3"]}"
end
end
