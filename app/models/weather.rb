class Weather < ApplicationRecord
  enum weather_type: { lluvioso: 'lluvioso', sequia: 'sequia', optimo: 'optimo' }
end
