class Game
  def initialize
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

  def current_user
    @current_user    
  end

  def check_taken_square(selected_move)    
    "Ivalid move!" if (@board[selected_move] == "X") || (@board[selected_move] == "O")
  end

  def save_move(selected_move)
    if @board.include?(selected_move)
      @board[selected_move] = @current_user
    else
      "Allowed moves #{@board.keys}"
    end
  end

  def check_winner
    if ((@board["a1"] == @current_user && @board["a2"] == @current_user && @board["a3"] == @current_user) ||
      (@board["b1"] == @current_user && @board["b2"] == @current_user && @board["b3"] == @current_user) ||
      (@board["c1"] == @current_user && @board["c2"] == @current_user && @board["c3"] == @current_user) ||
      (@board["a2"] == @current_user && @board["b2"] == @current_user && @board["c2"] == @current_user) ||
      (@board["a1"] == @current_user && @board["b1"] == @current_user && @board["c1"] == @current_user) ||
      (@board["a1"] == @current_user && @board["a2"] == @current_user && @board["a3"] == @current_user) ||
      (@board["a3"] == @current_user && @board["b3"] == @current_user && @board["c3"] == @current_user) ||
      (@board["a1"] == @current_user && @board["b2"] == @current_user && @board["c3"] == @current_user) ||
      (@board["c1"] == @current_user && @board["b2"] == @current_user && @board["a3"] == @current_user))
      "The winner is: #{@current_user}" 
    end
  end

  def check_draw
    "It's a draw" if @board.all? {|key, value| value != ""}
  end

  def change_active_user
    if @current_user == @players[0]
      @current_user = @players[1]
    else
      @current_user = @players[0]
    end
  end

  def display_board
  "\n 1 2 3 \na#{@board["a1"]} #{@board["a2"]} #{@board["a3"]}\nb#{@board["b1"]} #{@board["b2"]} #{@board["b3"]}\nc#{@board["c1"]} #{@board["c2"]} #{@board["c3"]}"
  end
end
