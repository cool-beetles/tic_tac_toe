class Board

  attr_accessor :squares

  def initialize
    @squares = {
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
  end
  
  def change_square(selected_square, value)
    @squares[selected_square] = value
  end

  def check_taken_square(selected_square)
    (@squares[selected_square] == "X") || (@squares[selected_square] == "O")
  end

  def check_existing_square(selected_square)
    @squares.include?(selected_square)
  end

  def full?
    @squares.all? { |key, value| value != "" }
  end

  def board_filled_in_with
    win_combinations = [[@squares["a1"], @squares["a2"], @squares["a3"]],
      [@squares["b1"], @squares["b2"], @squares["b3"]],
      [@squares["c1"], @squares["c2"], @squares["c3"]],
      [@squares["a1"], @squares["b1"], @squares["c1"]],
      [@squares["a2"], @squares["b2"], @squares["c2"]],
      [@squares["a3"], @squares["b3"], @squares["c3"]],
      [@squares["a1"], @squares["b2"], @squares["c3"]],
      [@squares["c1"], @squares["b2"], @squares["a3"]]]

    win_combinations.any? { |row| row.all? { |move| move == @current_user } }
  end

  def display
    "\n 1 2 3" +
    "\na#{@squares["a1"]} #{@squares["a2"]} #{@squares["a3"]}" +
    "\nb#{@squares["b1"]} #{@squares["b2"]} #{@squares["b3"]}" +
    "\nc#{@squares["c1"]} #{@squares["c2"]} #{@squares["c3"]}"
  end
end
