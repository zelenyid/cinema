class RatingController < ApplicationController
  def create
    render json: RatingProsessing::Creater.create!(params[:movie_id], params[:rating])
  end
end
