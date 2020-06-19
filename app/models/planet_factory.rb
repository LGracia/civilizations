class PlanetFactory
  class << self
    def ferengi
      Planet.new('Ferengi', 500, 1)
    end

    def betasoide
      Planet.new('Betasoide', 2000, 3)
    end

    def vulcanos
      Planet.new('Vulcanos', 1000, -5)
    end
  end
end
