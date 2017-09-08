board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]
board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]
def print_grid(board)
  board.each_with_index do |row, row_index|
    row.each_with_index do |square, square_index|
        puts square
          unless square_index == 2
            if row_index != 2
              row.each {|entry| print " #{entry} |" }
              puts "\n"
              puts "-----------"
            else
              row.each {|entry| print " #{entry} |"}
              puts "\n"
            end
          end
      end
  end
end
print_grid(board_a)
puts ""
print_grid(board_b)
