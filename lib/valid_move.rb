# code your #valid_move? method here


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.

def valid_move?(board, index)
    if !((0..8).include?(index))
        return false
    end
    if position_taken?(board,index)
        return false
    end

    return true

end

def position_taken?(board, index)
    if board[index] == " " || board[index] == ""
        return false
    elsif board[index] == "X" || board[index] == "O"
        return true
    elsif board[index].nil?
        return false
    end
end
