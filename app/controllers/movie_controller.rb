class MovieController < ApplicationController
  def movie_times
    render json: MovieProsessing::MovieTimesShower.movie_times!(params[:id])
  end
end
