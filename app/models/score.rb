class Score < ApplicationRecord
    belongs_to :user
    validates :num, presence: true
  
    scope :highest_score, -> { order('num desc').limit(1) }
    scope :topfive, -> { order('num desc').limit(5) }
  
    def self.topfive_users_and_scores
      topfive_scores = Score.topfive
      topfive_scores.collect do |score|
        {
          num: score.num,
          username: User.find_by(id: score.user_id).username
        }
      end
    end
  end