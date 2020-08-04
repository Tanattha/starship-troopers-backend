class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :scores
  attribute :highest_score do |user|
    user.highest_score
  end
end
