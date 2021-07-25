require 'rails_helper'

describe ShowtimeProsessing::Updater do
  let!(:showtime) { create(:showtime) }

  let!(:new_showtime_data) { { time: DateTime.new(2022, 8, 29, 22, 35, 0), price: 52 } }

  it 'successufuly updated showtime data' do
    expect(Showtime.first.time).to eq showtime.time
    expect(Showtime.first.price).to eq showtime.price
    expect(Showtime.first.movie).to eq showtime.movie

    described_class.update!(showtime.id, new_showtime_data)
    expect(Showtime.first.time).to eq new_showtime_data[:time]
    expect(Showtime.first.price).to eq new_showtime_data[:price]
  end
end
