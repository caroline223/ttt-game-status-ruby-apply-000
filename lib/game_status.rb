# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [1,4,7],
  [0,3,6],
  [2,5,8]
  ]
def won?(board)
  WIN_COMBINATIONS.each {|winning_set|
  index_0 = winning_set[0]
  index_1 = winning_set[1]
  index_2 = winning_set[2]
  
  
  position_1 = board[index_0]
  position_2 = board[index_1]
  position_3 = board[index_2]
  
  if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
    return winning_set  
  end
  }
    return false
  end
    
def full?(board)
  board.all? {|letter| letter == "X" || letter == "O"}
end

def draw?(board)
  if (!won?(board) && full?(board)) 
    return true 
  else
    return false 
end
end

def over?(board)
   if (won?(board) || full?(board) || draw?(board)) 
    return true 
  else
    return false 
end
end

def winner?(board)
  if won?(board) && !full?(board) && !draw?(board)
    return true 
  else 
    return false 
  end
end 