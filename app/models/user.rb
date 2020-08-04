class User < ApplicationRecord
    has_many :scores
    validates :username, presence: true, uniqueness: true
  
    def highest_score
      self.scores.highest_score[0].num
    end
  end