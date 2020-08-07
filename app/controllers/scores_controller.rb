class ScoresController < ApplicationController
    def index
      scores = Score.all
      render json: ScoreSerializer.new(scores)
    end

    def topten
      users_and_scores = Score.topten_users_and_scores
      render json: users_and_scores
    end
  
  end