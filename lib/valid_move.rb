# code your #valid_move? method here


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
    if board[index] == " " || board[index] == ""
        return false
    elsif board[index] == "X" || board[index] == "O"
        return true
    elsif board[index].nil?
        return false
    end
end

def valid_move?(board, index)
    if !(index.in?(0..8)) || position_taken(board, index)
        return false
    else
        return true
    end
end
