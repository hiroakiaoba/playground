require 'minitest/autorun'
require './lib/word_synth'
require './lib/effects'

class WordSynthTest < Minitest::Test

  def test_play
    word_synth = WordSynth.new
    assert_equal 'hello!', word_synth.play('hello!')
  end

  def test_play_with_reverse
    word_synth = WordSynth.new
    word_synth.add_effect(Effects.reverse)
    assert_equal 'ybuR si nuf', word_synth.play('Ruby is fun')
  end

  def test_play_with_many_effect
    word_synth = WordSynth.new
    word_synth.add_effect(Effects.echo(2))
    word_synth.add_effect(Effects.loud(3))
    word_synth.add_effect(Effects.reverse)
    assert_equal '!!!YYBBUURR !!!SSII !!!NNUUFF', word_synth.play('Ruby is fun')
  end

end