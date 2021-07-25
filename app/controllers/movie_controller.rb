class MovieController < ApplicationController
  def movie_details
    render json: MovieProsessing::MovieDetailsShower.movie_details!(params[:imdb_id])
  end

  def movie_times
    render json: MovieProsessing::MovieTimesShower.movie_times!(params[:id])
  end
end
