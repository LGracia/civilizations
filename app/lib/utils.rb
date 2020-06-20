class Utils
  class << self
    DAYS = 3650
    SUN_POSITION = Geometry::Point[0, 0]

    def run
      ferengi = PlanetFactory.ferengi
      betasoide = PlanetFactory.betasoide
      vulcanos = PlanetFactory.vulcanos

      (1..DAYS).each do |day|
        ferengi_point = generating_point(day, ferengi)
        betasoide_point = generating_point(day, betasoide)
        vulcanos = generating_point(day, vulcanos)


      end

      private

      def generating_point(day, planet)
        x = planet.distance * Math.cos(day*planet.speedInRadians)
        y = planet.distance * Math.sin(day*planet.speedInRadians)

        Geometry::Point[x, y]
      end

      def collinears?(p1, p2, p3)
        result = p1.x * (p2.y - p3.y) + p2.x * (p3.y - p1.y) + p3.x * (p1.y - p2.y)
        
        result == 0
      end
    end
  end
end
