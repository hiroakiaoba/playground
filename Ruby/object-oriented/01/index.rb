class Gear
  attr_reader :cog, :chainring, :rim, :tire

  def initialize(cog, chainring, rim, tire)
    @cog = cog
    @chainring = chainring
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def geare_inches
    ratio * (rim + (tire * 2))
  end
end

# gear = Gear.new(10, 20, 30, 40)
# puts gear.ratio

# data = [[10, 20], [30, 40]]