require './lib/confirm'
require 'minitest/autorun'

class DeepModuleTest < Minitest::Test

  def test_freeze_to_array
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
    assert Team::COUNTRIES.frozen?
    assert Team::COUNTRIES.all? { |v| v.frozen? }
  end

  def test_freeze_to_hash
    assert_equal(
      {'Japan' => 'yan', 'US' => 'dollar', 'India' => 'ruppe'},
      Bank::CURRENCIES
    )
    assert Bank::CURRENCIES.frozen?
    assert Bank::CURRENCIES.all? { |k, v| k.frozen? && v.frozen? }
  end

end
