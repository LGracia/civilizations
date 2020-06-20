class RegisterWeatherService
  class << self
    DAYS = 3650

    def run
      ferengi = PlanetFactory.ferengi
      betasoide = PlanetFactory.betasoide
      vulcanos = PlanetFactory.vulcanos

      (1..DAYS).each do |day|
        ferengi_point = PointService.generate_point(day, ferengi)
        betasoide_point = PointService.generate_point(day, betasoide)
        vulcanos = PointService.generate_point(day, vulcanos)
        weather = Weather.new

        if PointService.collinear?(p1, p2, p3)
          if PointService.collinear_with_sun?(p1, p2)
            weather.sequia!
            next
          end
          
          weather.optimo!
        else

        end
      end      
    end
  end
end
