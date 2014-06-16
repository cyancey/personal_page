class WeatherController < ApplicationController
  def current_conditions
    @weather = WeatherUnderground.current_conditions
    render partial: 'shared/weather_conditions', locals: {weather: @weather}
  end
end