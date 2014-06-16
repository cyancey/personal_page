class WeatherController < ApplicationController
  def current_conditions
    ip_address = request.remote_ip
    @weather = WeatherUnderground.current_conditions(ip_address)
    render partial: 'shared/weather_conditions', locals: {weather: @weather}
  end
end