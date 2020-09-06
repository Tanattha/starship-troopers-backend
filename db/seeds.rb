
require 'faker'

User.delete_all
puts "deleting users"
Score.delete_all
puts "deleting scores"
10.times do
    user = User.create(username: Faker::Name.first_name)
    user.scores << Score.create(num: rand(1...10))
end
  