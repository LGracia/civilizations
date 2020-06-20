namespace :db do
  task populate: :environment do
    WeatherJob.perform_later
  end
end
