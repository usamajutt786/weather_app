Rails.application.routes.draw do
  get 'weather', to: 'weather#show', as: 'weather_show'
  # other routes
end
