class Planet
  attr_reader :name, :distance, :speed

  def initialize(name, distance, speed)
    @name = name
    @distance = distance
    @speed = speed
  end

  def speedInRadians
    (@speed * Math::PI) / 180
  end
end
