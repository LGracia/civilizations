class TriangleService
  attr_reader :triangle, :area, :area1, :area2, :area3

  def initialize(triangle)
    @triangle = triangle
    @area = triangle_area(triangle.p1, triangle.p2, triangle.p3)

    @area1 = triangle_area($sun_position, triangle.p2, triangle.p3).round()
    @area2 = triangle_area(triangle.p1, $sun_position, triangle.p3).round()
    @area3 = triangle_area(triangle.p1, triangle.p2, $sun_position).round()
  end

  def sun_inside_triangle?
    @area == total_areas
  end

  def perimeter
    distance(triangle.p1, triangle.p2) + distance(triangle.p2, triangle.p3) + distance(triangle.p3, triangle.p1)
  end

  private

  def triangle_area(p1, p2, p3)
    (p1.x * (p2.y - p3.y) + p2.x * (p3.y - p1.y) + p3.x * (p1.y - p2.y) / 2.0).abs
  end

  def total_areas
    @area1 + @area2 + @area3
  end

  def distance(p1, p2)
    Math.sqrt((p1.x - p2.x) ** 2 + (p1.y - p2.y) ** 2)
  end 
end
