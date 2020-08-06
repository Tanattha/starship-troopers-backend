
require 'faker'

User.delete_all
Score.delete_all

10.times do
    user = User.create(username: Faker::Name.first_name)
    user.scores << Score.create(num: rand(1...30))
end
  