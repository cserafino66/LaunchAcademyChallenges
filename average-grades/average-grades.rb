jane_scores = [98, 95, 88, 97, 74]
sam_scores = [85, 93, 98, 88, 49]
matt_scores = [87, 93, 89, 97, 65]

def average(scores)
  sum = 0
  scores.each do |grade|
    sum += grade
  end
  sum.to_f/scores.count.to_f
end

puts average(jane_scores)
puts average(sam_scores)
puts average(matt_scores)

def letter_grade(average)
  if average >= 90
    "A"
  elsif average >= 80
    "B"
  elsif average >= 70
    "C"
  elsif average >= 60
    "D"
  else "F"
  end
end

puts letter_grade(average(jane_scores))
puts letter_grade(average(sam_scores))
puts letter_grade(average(matt_scores))

students_names = ["Johnny", "Jane", "Sally", "Elizabeth", "Michael"]

def rankings(students)
  students.each_with_index do |student, rank|
    puts "#{rank + 1}. #{student}"
  end
end
rankings(students_names)
