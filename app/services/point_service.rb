class PointService
  class << self
    SUN_POSITION = Point.new(0, 0)

    def generate_point(day, planet)
      x = planet.distance * Math.cos(day*planet.speedInRadians)
      y = planet.distance * Math.sin(day*planet.speedInRadians)

      Point.new(x, y)
    end

    def collinear?(p1, p2, p3)
      (p3.y - p2.y) * (p2.x - p1.x) == (p2.y - p1.y) * (p3.x - p2.x)
    end

    def collinear_with_sun?(p1, p2)
      (SUN_POSITION.y - p2.y) * (p2.x - p1.x) == (p2.y - p1.y) * (SUN_POSITION.x - p2.x)
    end
  end
end
