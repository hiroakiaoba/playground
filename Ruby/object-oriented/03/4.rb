# Wheelのインスタンスを注入できない場合でも、クラスないで隔離する
# diameterもラップする。gear_inchesで複雑な計算をする場合に備えて

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

gear = Gear.new(10, 20, 30, 40)
puts gear.gear_inches