module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end

  # 特異メソッド、インスタンスメソッド、両方として使える
  module_function :log
end

Loggable.log('実行です')

class Product
  include Loggable

  def title
    log 'title is called'
    'A greate movie'
  end
end

product = Product.new
p product.title

# result:
# [LOG] 実行です
# [LOG] title is called
# "A greate movie"