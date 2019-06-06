require './lib/deepfreezable.rb'
require 'minitest/autorun'

class DeepModuleTest < Minitest::Test

  def test_require
    assert DeepFreezable
  end

  def test_hoge
    assert_equal 1, 1
  end

end
