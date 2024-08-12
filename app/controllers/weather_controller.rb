class WeatherController < ApplicationController
  def show
    @weather = nil
    @city = params[:city]

    if @city.present?
      weather_service = WeatherService.new(ENV['WEATHER_API_KEY'])
      @weather = weather_service.current_weather(@city)
    end
  end
end
