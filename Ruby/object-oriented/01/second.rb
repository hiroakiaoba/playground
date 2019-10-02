class Gear
  attr_reader :cog, :chainring, :wheel

  def initialize(cog, chainring, rim, tire)
    @cog = cog
    @chainring = chainring
    @wheel = Wheel.new(rim, tire)
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end

  Wheel = Struct.new(:rim, :tire) do
    def diameter
      rim + (tire * 2)
    end
  end
end

gear = Gear.new(10, 20, 30, 40)
puts gear.gear_inches