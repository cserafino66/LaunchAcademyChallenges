bottles = 99

while bottles > -1
  if bottles % 10 != 0 && bottles > 2
    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.
    Take one down and pass it around, #{bottles - 1} bottles of beer on the wall.\n\n"
    bottles = bottles - 1
  elsif bottles > 2
    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer!
    Take one down and pass it around, #{bottles.to_i - 1} bottles of beer on the wall.\n\n"
    bottles = bottles - 1
  elsif bottles == 2
    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.
        Take one down and pass it around, #{bottles} bottle of beer on the wall.\n\n"
    bottles = bottles - 1
  elsif bottles == 1
    puts "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer.
        Take one down and pass it around, no more bottles of beer on the wall.\n\n"
    bottles = bottles - 1
  else puts "No more bottles of beer on the wall, no more bottles of beer. Go to the store
  and buy some more, 99 bottles of beer on the wall.\n\n"
    bottles = bottles - 1
  end
end
