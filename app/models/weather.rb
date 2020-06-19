class Weather < ApplicationRecord
  enum weather_type: { rainy: 'lluvioso', drought: 'sequia' }
end
