class ShowtimesController < ApplicationController
  def update
    render json: ShowtimeProsessing::Updater.update!(params[:id], showtimes_params)
  end

  private

  def showtimes_params
    params.permit(:time, :price)
  end
end
