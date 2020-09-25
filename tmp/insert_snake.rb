require 'io/console'

# board area is 21 x 30 ? double spaced

board = 
  [
    ['🔳' * 31],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳', nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, '🔳'],
    ['🔳' * 31]
  ]
  
def print_board(board)
  rows = board.map do |row|
      row = row.map { |element| element.nil? ? '  ' : element }
      row.join
  end

  puts rows.join("\n")

end

  

# snake

# array2 = [[1,2,3,4,5],[1,2,3,4,5]]
# array2[1].insert(4, "🟣")
# array2[1].delete_at(3)
# puts array2

# board[1].insert(4, "🟣")
# board[1].delete_at(3)




body_segs = [[10, 10], [10, 11], [10, 12]]

body_segs.each do |seg|
  board[seg[0]].insert(seg[1], "🟣")
  board[seg[0]].delete_at(seg[1]-1)
end
print_board(board)


# head = gets.chomp.downcase


case STDIN.getch
when "w"
  body_segs.unshift([body_segs[0][0]-1, body_segs[0][1]])
  body_segs.delete_at(-1)
when "a"
  body_segs.unshift([body_segs[0][0], body_segs[0][1]-1])
  body_segs.pop
when "s"
  body_segs.unshift([body_segs[0][0]+1, body_segs[0][1]])
  body_segs.pop
when "d"
  body_segs.unshift([body_segs[0][0], body_segs[0][1]+1])
  body_segs.pop
end

def tail
  board[body_segs[-1][0]].insert(body_segs[-1][1], nil)
  board[body_segs[-1][0]].delete_at(body_segs[-1][1]+1)
end 

p body_segs

body_segs.each do |seg|
  board[seg[0]].insert(seg[1], "🟣")
  board[seg[0]].delete_at(seg[1]-1)
end
print_board(board)

p body_segs