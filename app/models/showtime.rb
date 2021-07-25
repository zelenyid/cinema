# == Schema Information
#
# Table name: showtimes
#
#  id         :bigint           not null, primary key
#  movie_id   :bigint
#  time       :datetime
#  price      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Showtime < ApplicationRecord
  belongs_to :movie
end
