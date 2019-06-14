require 'minitest/autorun'
require './proc_judge'

class JudgeTest < Minitest::Test

  def test_judge_given_10
    assert_equal '子供です', judge(10)
  end

  def test_judge_given_20
    assert_equal 'はたちです', judge(20)
  end

  def test_judge_given_30
    assert_equal '大人です', judge(30)
  end

end