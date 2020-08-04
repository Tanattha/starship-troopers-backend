
require 'faker'

User.delete_all
Score.delete_all

5.times do
    user = User.create(username: Faker::Name.first_name)
    user.scores << Score.create(num: rand(1...10))
end
  