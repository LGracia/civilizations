class Weather < ApplicationRecord
  enum weather_type: { lluvia: 'lluvia', sequia: 'sequia', optimo: 'optimo', incorrecto: 'incorrecto' }
end
