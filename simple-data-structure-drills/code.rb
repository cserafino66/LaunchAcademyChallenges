transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions:

# * What is the value of the first transaction?
puts transactions.first
# * What is the value of the second transaction?
puts transactions[1]
# * What is the value of the fourth transaction?
puts transactions[3]
# * What is the value of the last transaction?
puts transactions[-1]
# * What is the value of the second from last transaction?
puts transactions[-2]
# * What is the value of the 5th from last transaction?
puts transactions[-5]
# * What is the value of the transaction with index 5?
puts transactions[5]
# * How many transactions are there in total?
puts transactions.size
# * How many positive transactions are there in total?
positive = 0
transactions.each do |number|
  if number > 0
    positive += 1
  end
end
puts positive
# * How many negative transactions are there in total?
negative = 0
transactions.each do |number|
  if number < 0
    negative += 1
  end
end
puts negative
# * What is the largest withdrawal?
transactions.sort!
puts transactions.first
# * What is the largest deposit?
transactions.sort!
puts transactions[-1]
# * What is the smallest withdrawal?
transactions.select!{ |number| number < 0 }
transactions.sort!
puts transactions[-1]
# * What is the smallest deposit?
transactions.select!{ |number| number > 0 }
transactions.sort!
puts transactions.first
# * What is the total value of all the transactions?
total = 0
transactions.each do |number|
  total += number
end
puts total
# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his last transaction?
total = 239900
transactions.each do |number|
  total += number
end
puts total



best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
puts best_records.size
# * Who are all the artists listed?
puts best_records.keys
# * What are all the album names in the hash?
puts best_records.values
# * Delete the `Eminem` key-value pair from the list.
best_records.delete("Eminem")
puts best_records
# * Add your favorite musician and their best album to the list.
best_records["Slayer"] = "Reign in Blood"
# * Change `Nirvana`'s album to another.
best_records["Nirvana"] = "In Utero"
# * Is `Nirvana` included in `best_records`?
puts best_records.has_key?("Nirvana")
# * Is `Soundgarden` included in `best_records`?
puts best_records.has_key?("Soundgarden")
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band.
if best_records.has_key?("Soundgarden") == false
  best_records["Soundgarden"] = "Superunknown"
end
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
best_records.each do |band, album|
  if band.length <= 6
    puts "#{band} ~ #{album}"
  end
end
# * Which key-value pairs have a value that is greater than 10 characters?
best_records.each do |band, album|
  if album.length > 10
    puts "#{band} ~ #{album}"
  end
end
