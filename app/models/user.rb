class User < ApplicationRecord
    has_many :scores
    validates :username, presence: true
  end