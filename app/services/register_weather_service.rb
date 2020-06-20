class RegisterWeatherService
  DAYS = 3650

  class << self
    def run
      ferengi = PlanetFactory.ferengi
      betasoide = PlanetFactory.betasoide
      vulcanos = PlanetFactory.vulcanos

      (1..DAYS).each do |day|
        weather = Weather.new
        point_service = PointsService.new(day, ferengi, betasoide, vulcanos)

        if point_service.collinear?
          if point_service.collinear_with_sun?
            weather.sequia!
            next
          end

          weather.optimo!
          next
        end

        triangle_service = TriangleService.new(point_service)

        if triangle_service.sun_inside_triangle?
          weather.perimeter = triangle_service.perimeter
          weather.lluvia!
        else
          weather.incorrecto!
        end
      end      
    end
  end
end
