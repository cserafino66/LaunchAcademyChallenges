require 'faker'

10.times do
  User.create(first_name: Faker::Zelda.character, email: Faker::Internet.email, last_name: Faker::Zelda.character)
end

5.times do
  Project.create(name: Faker::LordOfTheRings.character, description: Faker::Hipster.sentence(3))
end

10.times do
  Team.create(user: User.all[rand(11)], project: Project.all[rand(6)])
end
