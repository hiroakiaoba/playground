
# moduleを定義
# instanceからのみ + レシーバなし
# でlogメソッドを呼び出すため、privateメソッドにする
module Loggable
  private

  def log(text)
    puts "[Log]: #{text}"
  end
end