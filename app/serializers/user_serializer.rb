class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :scores
end
