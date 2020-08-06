class ScoreSerializer
  include FastJsonapi::ObjectSerializer
  attributes :num, :user_id
end
