class WordSynth

  def initialize
    @effects = []
  end

  def add_effect(effect)
    @effects << effect
  end

  def play(original_word)
    @effects.inject(original_word) do |words, effect|
      effect.call(words)
    end
  end

end