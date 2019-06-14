require 'minitest/autorun'
require './lib/effects'

class EffectsTest < Minitest::Test

  def test_echo
    effect = Effects.echo(2)
    assert_equal 'tthhiiss iiss aann aappppllee', effect.call('this is an apple')
    effect = Effects.echo(3)
    assert_equal 'III aaammm JJJaaapppaaannneeessseee', effect.call('I am Japanese')
  end

  def test_loud
    effect = Effects.loud(2)
    assert_equal 'RUBY!! IS!! FUN!!', effect.call('Ruby is fun')
    effect = Effects.loud(3)
    assert_equal 'RUBY!!! IS!!! FUN!!!', effect.call('Ruby is fun')
  end

  def test_reverse
    effect = Effects.reverse
    assert_equal 'ybuR si nuf', effect.call('Ruby is fun')
  end

end