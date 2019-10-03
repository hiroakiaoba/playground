# 引数の順番に依存性がある外部ライブラリなどを使用する場合、
# インスタンスを返すラッパーモジュールを作成すると良い。
# 引数をハッシュで渡せるようになる。

class Gear
  attr_reader :cog, :chainring, :rim, :tire

  def initialize(cog, chainring, rim, tire)
    @cog       = cog
    @chainring = chainring
    @rim       = rim
    @tire      = tire
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

module GearWapper
  def self.gear(args)
    Gear.new(args[:cog], args[:chainring], args[:rim], args[:tire])
  end
end

gear = GearWapper.gear({
  cog: 40,
  chainring: 50,
  rim: 60,
  tire: 70
})
puts gear.gear_inches