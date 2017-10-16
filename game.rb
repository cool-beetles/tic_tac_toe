require "../board.rb"

class Game

  attr_reader :current_user

  def initialize
    @players = ["X", "O"]
    @current_user = @players[0]
    @board = Board.new
  end

  def save_move(selected_square)
    if @board.check_existing_square(selected_square) && !@board.check_taken_square(selected_square)
      @board.change_square(selected_square, current_user) 
    end   
  end

  def display_final_status
    if check_winner
      "The winner is: #{@current_user}"
    elsif check_draw
      "It's a draw"
    end
  end

  def change_active_user
    @current_user == @players[0] ? @current_user = @players[1] : @current_user = @players[0]
  end

  def display_board
    @board.display
  end

  private

  def check_winner
    win_combinations = [["a1", "a2", "a3"], ["b1", "b2", "b3"], ["c1", "c2", "c3"], ["a1", "b1", "c1"], ["a2", "b2", "c2"], ["a3", "b3", "c3"], ["a1", "b2", "c3"], ["c1", "b2", "a3"]]
    win_combinations.any? { |row| @board.board_filled_in_with(row, @current_user)}
  end

  def check_draw
    @board.full?
  end
end
