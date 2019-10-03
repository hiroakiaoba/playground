# 引数の順番の依存性をなくすためにハッシュで渡す

class Gear
  attr_reader :cog, :chainring, :rim, :tire

  def initialize(args)
    @cog = args[:cog]
    @chainring = args[:chainring]
    @rim = args[:rim]
    @tire = args[:tire]
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end

  def wheel
    @wheel ||= Wheel.new(rim, tire)
  end

  def diameter
    wheel.diameter
  end
end

class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end
end

gear = Gear.new({
  cog: 10,
  chainring: 20,
  rim: 30,
  tire: 40
})
puts gear.gear_inches