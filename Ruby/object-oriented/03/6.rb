# 引数のデフォルト値を設定する

class Gear
  attr_reader :cog, :chainring, :rim, :tire

  def initialize(args)

    # この場合に、値がbooleanのときはうまく行かない
    # temp = false || ture
    ## tempはtrueになる
    # @cog = args[:cog] || 10
    # @chainring = args[:chainring] || 20
    # @rim = args[:rim] || 30
    # @tire = args[:tire] || 40

    # fetchを使うとboolean値デフォルトをちゃんと設定できる
    @cog = args.fetch(:cog, 10)
    @chainring = args.fetch(:chainring, 20)
    @rim = args.fetch(:rim, 30)
    @tire = args.fetch(:tire, 40)
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
  chainring: 20
})
puts gear.gear_inches