# 自転車の車輪の円周を知りたいという要件。WheelをGearと独立して使いたいという明確な要件が出てきたことに
# -> wheelを別クラスで定義する
class Gear
  attr_reader :cog, :chainring, :wheel

  def initialize(cog, chainring, wheel)
    @cog = cog
    @chainring = chainring
    @wheel = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end

  # Wheel = Struct.new(:rim, :tire) do
  #   def diameter
  #     rim + (tire * 2)
  #   end
  # end
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

  def circumference
    diameter * Math::PI
  end
end

wheel = Wheel.new(30, 40)
gear = Gear.new(10, 20, wheel)
puts gear.gear_inches

# circumference
# diameter * Math::PI