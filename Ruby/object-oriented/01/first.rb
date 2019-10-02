class Gear
  attr_reader :wheels

  def initialize(data)
    @wheels = wheelify(data)
  end

  def diameters
    wheels.collect { |wheel|
      wheel.rim + (wheel.tire * 2)
    }
  end

  Wheel = Struct.new(:rim, :tire)

  def wheelify(data)
    data.collect { |cell|
      Wheel.new(cell[0], cell[1])
    }
  end
end

# [リム, タイヤサイズ]
data = [[10, 20], [30, 40]]

gear = Gear.new(data)

puts gear.diameters