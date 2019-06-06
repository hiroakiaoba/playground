# inclued -> インスタンスメソッドとして取り込む
# extend  -> クラスメソッド(特異メソッド)として取り込む

require './log.rb'

# インスタンスメソッドからの呼び出しのため「include」を使用
class User
  attr_reader :name, :age

  include Loggable

  def initialize(name, age)
    @name = name
    @age = age
  end

  def hello
    log "#{name}: called hello"
    puts "Hello!!!"
  end
end

user = User.new('tom', 65)
user.hello

# クラスメソッド(特異メソッド)からの呼び出しのため「extend」を使用
class Product
  extend Loggable

  PRODUCT_LIST = ['菓子', '酒', '飲料', '弁当']

  def self.display_products
    log 'called display_products'
    puts "一覧: #{PRODUCT_LIST}"
  end
end

Product.display_products