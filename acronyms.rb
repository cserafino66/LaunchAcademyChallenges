# file: acronyms.rb
require "pry"

acronyms = {
  "EST" => "Eastern Standard Time",
  "EOF" => "End of File",
  "SSN" => "Social Security Number",
  "UFO" => "Unidentified Flying Object",
  "NASA" => "National Aeronautics and Space Administration",
  "MTV" => "Music Television",
  "DAEMON" => "Disk And Execution Monitor"
}

acronyms.each do |key, value|
  puts "#{key}: #{value}"
end

keys = []

acronyms.each_key do |key, value|
  keys << key
end

puts keys.join(', ')

if acronyms.has_key?("BLT") == true
  puts acronyms["BLT"]
else
  puts "I don't know that one!"
end

new_key = "UFO"
new_value = "Unidentified Foreign Object"

if acronyms[new_key] && acronyms[new_key] == new_value
  puts "No need to update, I already know that one."
else
  puts "Updating acronyms..."
  acronyms[new_key] = new_value
end
