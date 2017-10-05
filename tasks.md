1. What current_user is? How can you make it shorter?
2. Let's leave only necessary methods a public ones:
save_move (protip: it should return false in case of invalid move, then bin/start.rb can display message that sth goes wrong and repeat user's turn)
change_active_user
display_board
display_final_status (new method)
3. Public methods use private methods:
check_taken_square (true/false)
check_winner
check_draw
