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
  board.each_with_index do |value, position|
    if position[0] == nil
      print " "
    elsif position
