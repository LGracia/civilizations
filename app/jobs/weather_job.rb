class WeatherJob < ApplicationJob
  queue_as :default

  def perform
    RegisterWeatherService.run
  end
end
