class Board

  attr_accessor :squares

  def initialize
    @squares = {
      "a1" => " ",
      "a2" => " ",
      "a3" => " ",
      "b1" => " ",
      "b2" => " ",
      "b3" => " ",
      "c1" => " ",
      "c2" => " ",
      "c3" => " " 
    }
  end
  
  def change_square(selected_square, value)
    @squares[selected_square] = value
  end

  def check_taken_square(selected_square)
    @squares[selected_square] != " "
  end

  def check_existing_square(selected_square)
    @squares.include?(selected_square)
  end

  def full?
    @squares.values.all? { |value| value != " " }
  end

  def board_filled_in_with(row, value)
    row.all? { |move| @squares[move] == value }
  end

  def display
    "\n  |1|2|3|" +
    "\n|a|#{@squares["a1"]} #{@squares["a2"]} #{@squares["a3"]}" +
    "\n|b|#{@squares["b1"]} #{@squares["b2"]} #{@squares["b3"]}" +
    "\n|c|#{@squares["c1"]} #{@squares["c2"]} #{@squares["c3"]}" +
    "\n"
  end
end
