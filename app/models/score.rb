class Score < ApplicationRecord
    belongs_to :user
    validates :num, presence: true
  
    scope :topten, -> { order('num desc').limit(10) }
  
    def self.topten_users_and_scores
      topten_scores = Score.topten
      topten_scores.each_with_index.map do |score,i|
        {
          rank: i+1,
          num: score.num,
          username: User.find_by(id: score.user_id).username
        }
      end
    end
  end