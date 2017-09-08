# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')
1000.times do
  Article.create(
    subject: "#{Faker::Hacker.adjective} #{Faker::Hacker.noun}",
    story: Faker::Hacker.say_something_smart
  )
end
