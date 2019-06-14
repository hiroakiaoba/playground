module Effects

  def self.echo(rate)
    # 指定回数文字が繰り返される
    -> (words) do
      words.chars.map { |c| c == ' ' ? c : c * rate }.join()
    end
  end

  def self.loud(level)
    # 大文字にして、指定の個数！をつける
    # this is a pen -> THIS!! IS!! A!! PEN!!
    -> (words) {
      words.split(' ').map { |str| str.upcase + '!' * level }.join(' ')
    }
  end

  def self.reverse
    # 単語が反転する
    # this is a pen -> siht si a nep
    -> (words) {
      words.split(' ').map(&:reverse).join(' ')
    }
  end

end