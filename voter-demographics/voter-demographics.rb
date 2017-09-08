voter_data = [
{
    "age": 25,
    "income": 50000,
    "household_size": 1,
    "gender": "male",
    "education": "College"},

{
    "age": 30,
    "income": 60000,
    "household_size": 3,
    "gender": "female",
    "education": "High School"},

{
    "age": 32,
    "income": 80000,
    "household_size": 2,
    "gender": "Unspecified",
    "education": "College"},

{
    "age": 35,
    "income": 65000,
    "household_size": 4,
    "gender": "Female",
    "education": "College"},

{
    "age": 38,
    "income": 63000,
    "household_size": 3,
    "gender": "Male",
    "education": "College"},

{
    "age": 48,
    "income": 78000,
    "household_size": 5,
    "gender": "male",
    "education": "High School"},

{
    "age": 45,
    "income": 75000,
    "household_size": 2,
    "gender": "female",
    "education": "College"},

{
    "age": 24,
    "income": 45000,
    "household_size": 1,
    "gender": "male",
    "education": "Did Not Complete High School"},

{
    "age": 45,
    "income": 75000,
    "household_size": 1,
    "gender": "male",
    "education": "College"},

{
    "age": 52,
    "income": 100000,
    "household_size": 2,
    "gender": "male",
    "education": "College"}
]

total_ages = 0
voter_data.each do |voter|
    total_ages += voter[:"age"]
end
puts "Average Age: #{total_ages.to_f/voter_data.count.to_f}"

total_income = 0
voter_data.each do |voter|
  total_income += voter[:"income"]
end
puts "Average Income: #{total_income.to_f/voter_data.count.to_f}"

total_households = 0
voter_data.each do |voter|
  total_households += voter[:"household_size"]
end
puts "Average Household Size: #{total_households.to_f/voter_data.count.to_f}"

total_female = 0
voter_data.each do |voter|
  if voter[:"gender"].downcase == "female"
  total_female += 1
  end
end
puts "Female %: #{(total_female.to_f/voter_data.count.to_f)*100}"

total_male = 0
voter_data.each do |voter|
  if voter[:"gender"].downcase == "male"
  total_male += 1
  end
end
puts "Male %: #{(total_male.to_f/voter_data.count.to_f)*100}"

total_unspecified = 0
voter_data.each do |voter|
  if voter[:"gender"].downcase == "Unspecified"
    total_unspecified += 1
  end
end
puts "Unspecified Gender %: #{(total_unspecified.to_f/voter_data.count.to_f)*100}"

total_college = 0
voter_data.each do |voter|
  if voter[:"education"].downcase == "college"
    total_college += 1
  end
end
puts "% of voters with college education: #{(total_college.to_f/voter_data.count.to_f)*100}"

total_highschool = 0
voter_data.each do |voter|
  if voter[:"education"].downcase == "high school"
    total_highschool += 1
  end
end
puts "% of voters with a high school education: #{(total_highschool.to_f/voter_data.count.to_f)*100}"

total_dnc = 0
voter_data.each do |voter|
  if voter[:"education"].downcase == "did not complete high school"
    total_dnc += 1
  end
end
puts "% of voters who did not finish high school: #{(total_dnc.to_f/voter_data.count.to_f)*100}"
