# app/services/weather_service.rb
class WeatherService
    include HTTParty
    base_uri 'https://api.weatherapi.com/v1'
  
    def initialize(api_key)
      @api_key = api_key
    end
  
    def current_weather(city)
      self.class.get("/current.json", query: { key: @api_key, q: city })
    end
  end
  