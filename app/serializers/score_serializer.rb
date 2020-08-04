class ScoreSerializer
  include FastJsonapi::ObjectSerializer
  attributes :num, :created_at, :user
end
