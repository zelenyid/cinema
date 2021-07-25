require 'rails_helper'

RSpec.describe Showtime, type: :model do
  let(:movie) { create(:movie) }

  it 'successfully created 1 movie' do
    described_class.create(movie: movie, time: DateTime.new(2021, 8, 29, 22, 35, 0), price: 25)

    expect(described_class.count).to eq 1
  end

  it 'successfully created 2 movie' do
    described_class.create(movie: movie, time: DateTime.new(2021, 8, 30, 22, 35, 0), price: 50)
    described_class.create(movie: movie, time: DateTime.new(2021, 9, 2, 22, 35, 0), price: 13)

    expect(described_class.count).to eq 2
  end
end
