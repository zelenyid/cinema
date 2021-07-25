require 'rails_helper'

describe MovieProsessing::MovieTimesShower do
  let!(:movie) { create(:movie) }

  before do
    create_list(:showtime, 2, movie: movie)
  end

  it 'successufuly returned showtimes of the movie' do
    showtimes = described_class.movie_times!(movie.id)

    expect(showtimes.count).to eq 2
  end
end
