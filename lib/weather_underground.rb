module WeatherUnderground
  extend self
  WUND_API_KEY = ENV['WUND_API_KEY']

  def current_conditions
    response = HTTParty.get("http://api.wunderground.com/api/#{WUND_API_KEY}/conditions/q/autoip.json")

    weather_info = {
      current_temp: response["current_observation"]["temp_f"],
      forecast_url: response["current_observation"]["forecast_url"],
      condition_icon_url: response["current_observation"]["icon_url"],
      current_condition: response["current_observation"]["weather"]
    }
  end
end