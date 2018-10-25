# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #left diagonal
  [2,4,6]  #right diagonal
  ]
  
def won?(board)
  winner = nil
  WIN_COMBINATIONS.each do |win_combo|
    if win_combo.all? {|index| board[index] == "X"}
      winner = win_combo
    elsif win_combo.all? {|index| board[index] == "O"}
      winner = win_combo
    else
      false
    end
  end
  if winner != nil
    winner
  else
    false
  end
end
  
def full?(board)
  board.each do |index|
    if position_taken?(board, index)
      true
    else
      false
    end
end
end
