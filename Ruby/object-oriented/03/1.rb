# GearクラスのがガチガチにWheelクラスに依存しているコード
# Wheelの引数を知っている。wheelのインスタンスがdiameterメッセージを受信するのを知っている。
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
    ratio * Wheel.new(rim, tire).diameter
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