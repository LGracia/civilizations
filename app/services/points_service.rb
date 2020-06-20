class PointsService
  attr_reader :p1, :p2, :p3

  def initialize(day, *planets)
    @p1 = generate_point(day, planets[0])
    @p2 = generate_point(day, planets[1])
    @p3 = generate_point(day, planets[2])
  end

  def generate_point(day, planet)
    x = (planet.distance * Math.cos(day*planet.speedInRadians)).round()
    y = (planet.distance * Math.sin(day*planet.speedInRadians)).round()

    Point.new(x, y)
  end

  def collinear?
    collinear(@p1, @p2) == collinear(@p2, @p3)
  end

  def collinear_with_sun?
    collinear($sun_position, @p2) == collinear(@p2, @p3)
  end

  private

  def collinear(p1, p2)
    (p2.y - p1.y) / (p2.x - p1.x)
  rescue ZeroDivisionError => e
    nil
  end
end
