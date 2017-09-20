def initial_parametrs
  @players = ["X", "O"]
  @board = {
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
@current_user = @players[0]
end
 
def check_taken_square(selected_move)    
  if (@board[selected_move] == "X") || (@board[selected_move] == "O")
    return "Ivalid move!"
  end
end

def save_move(selected_move)
  if @board.include?(selected_move)
    @board[selected_move] = @current_user
  else
    return "Allowed moves #{@board.keys}"
  end
end

def check_winner(current_user)
  if ((@board["a1"] == @current_user && @board["a2"] == @current_user && @board["a3"] == @current_user) ||
    (@board["b1"] == @current_user && @board["b2"] == @current_user && @board["b3"] == @current_user) ||
    (@board["c1"] == @current_user && @board["c2"] == @current_user && @board["c3"] == @current_user) ||
    (@board["a2"] == @current_user && @board["b2"] == @current_user && @board["c2"] == @current_user) ||
    (@board["a1"] == @current_user && @board["b1"] == @current_user && @board["c1"] == @current_user) ||
    (@board["a1"] == @current_user && @board["a2"] == @current_user && @board["a3"] == @current_user) ||
    (@board["a3"] == @current_user && @board["b3"] == @current_user && @board["c3"] == @current_user) ||
    (@board["a1"] == @current_user && @board["b2"] == @current_user && @board["c3"] == @current_user) ||
    (@board["c1"] == @current_user && @board["b2"] == @current_user && @board["a3"] == @current_user))
    return "The winner is: #{@current_user}" 
  elsif ((@board["a1"] != ("")) && (@board["a2"] != ("")) && (@board["a3"] != ("")) &&
    (@board["b1"] != ("")) && (@board["b2"] != ("")) && (@board["b3"] != ("")) &&
    (@board["c1"] != ("")) && (@board["c2"] != ("")) && (@board["c3"] != ("")))
    return "It's a draw"
  end
end

def change_active_user(current_user)
  if @current_user == @players[0]
    @current_user = @players[1]
  else
    @current_user = @players[0]
  end
  return @current_user
end
