class ShowtimeProsessing::Updater
  attr_reader :showtime_id, :showtime_params

  def self.update!(showtime_id, showtime_params)
    new(showtime_id, showtime_params).update_showtime
  end

  def initialize(showtime_id, showtime_params)
    super()

    @showtime = showtime(showtime_id)
    @showtime_params = showtime_params
  end

  def update_showtime
    @showtime.update!(@showtime_params) unless @showtime_params.nil?

    @showtime
  end

  private

  def showtime(showtime_id)
    Showtime.find(showtime_id)
  end
end
