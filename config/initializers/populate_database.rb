if !Rails.env.test?
  WeatherJob.perform_later if Weather.first.nil?
end
