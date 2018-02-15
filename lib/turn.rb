
def turn(board)
  
  puts "Please enter 1-9:"
  input=gets.strip
  index = input_to_index(input)
  
  if valid_move?(board, index)
    move(board, index, "0")
    display_board(board)
  else
    turn(board)
  end

end



def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
 index.to_i - 1
end

def move(board, index, token = "O")
  board[index] = token
end

def position_taken?(board,index)

  if board[index] == "X" || board[index] == "O"
      FALSE
  elsif
     board[index] == " " || board[index] == ""
      TRUE
  else
      FALSE
  end

end

def valid_move?(board,index)
  
  if position_taken?(board,index)
    if index.between?(0,8)
      TRUE
    else
      FALSE
    end
  end
  
end

