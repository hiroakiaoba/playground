# 依存の方向を変える
# WheelクラスがGearクラスに依存している形

class Gear
  attr_reader :cog, :chainring

  def initialize(args)
    @cog = args.fetch(:cog, 10)
    @chainring = args.fetch(:chainring, 20)
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches(diameter)
    ratio * diameter
  end
end

class Wheel
  attr_reader :rim, :tire, :gear

  def initialize(args)
    @rim = args.fetch(:rim)
    @tire = args.fetch(:tire)
    @gear = Gear.new({ cog: args[:cog], chainring: args[:chainring] })
  end

  def diameter
    rim + (tire * 2)
  end

  def gear_inches
    gear.gear_inches(diameter)
  end
end

wheel = Wheel.new({
  rim: 10,
  tire: 20,
  cog: 30,
  chainring: 40
})
puts wheel.gear_inches