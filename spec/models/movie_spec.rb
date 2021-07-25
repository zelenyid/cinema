# == Schema Information
#
# Table name: movies
#
#  id         :bigint           not null, primary key
#  title      :string
#  imdb_id    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Movie, type: :model do
  it 'successfully created 1 movie' do
    described_class.create(title: 'Title 1', imdb_id: 'blaasfa')

    expect(described_class.count).to eq 1
  end

  it 'successfully created 2 movie' do
    described_class.create(title: 'Title 1', imdb_id: 'blaasfa')
    described_class.create(title: 'Title 2', imdb_id: 'blaasfa2')

    expect(described_class.count).to eq 2
  end
end
