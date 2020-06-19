class Utils
  class << self
    DAYS = 3650

    def run
      ferengi = PlanetFactory.ferengi
      betasoide = PlanetFactory.betasoide
      vulcanos = PlanetFactory.vulcanos

      (1..DAYS).each do |day|

      end

      private

      def point(day, planet)
        x = planet.distance * Math.cos(day*planet.speedInRadians)
        y = planet.distance * Math.sin(day*planet.speedInRadians)

        Geometry::Point[x, y]
      end
    end
  end
end
