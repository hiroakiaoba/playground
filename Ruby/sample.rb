
# lower = 'a'..'z'

# lower_to_upper = lower.each_with_object ({}) do |char, hash|
#   hash[char] = char.upcase
# end

# p lower_to_upper

# ary = [
#   { name: 'aoba', age: 22 },
#   { name: 'hiro', age: 1 }
# ]

# newAry = ary.map { |a| a[:name] }
# p newAry

# hash = { name: 'aoba', age: 22, hoby: 'hoge' }
# keys = [:name, :age, :hoby]

# ary = keys.map(&hash)
# p ary

# sendを使ったmethodの呼び出し
# class Hello
#   attr_accessor :name, :age

#   def initialize(_name, _age)
#     @name = _name
#     @age = _age
#   end

#   def hello
#     puts "hello!!!"
#   end

#   def say
#     puts "私の名前は#{@name}です。"
#   end

#   def room=(_room)
#     @room = _room
#   end

#   def room
#     @room
#   end

#   def call(method_name)
#     self.send(method_name)
#   end

# end

# hello = Hello.new('aoba', 33)
# hello.call(:say)

# hello.room = 'ルーム'
# p hello.room

# # protectedとprivate
# class User
#   attr_reader :name, :weight

#   def initialize(_name, _weight)
#     @name = _name
#     @weight = _weight
#   end

#   def heavier_than?(other_user)
#     other_user.weight <= self.weight
#   end

#   # private :weight # これだとheavier_thanでレシーバから呼び出せない。
#   protected :weight # これだとレシーバから呼び出せる。

# end

# user = User.new('aoba', 110)
# other_user = User.new('tom', 100)

# p user.heavier_than?(other_user)

# superの使い方

# DVD is a Product
# DVDはProductの一種である
# 「is a」の関係という

# 商品クラス
class Product
  attr_accessor :name, :price

  def initialize(_name, _price)
    @name = _name
    @price = _price
  end

  def to_s
    "name: #{name}, price: #{price}"
  end

end

# DVDクラス
class DVD < Product
  attr_accessor :running_time

  def initialize(_name, _price , _running_time)
    super(_name, _price)
    @running_time = _running_time
  end

  def to_s
    "#{super}, running_time: #{running_time}"
  end
end

dvd = DVD.new('dynaso', 2500, 1.5)
puts dvd.to_s

class Application
  def create
    puts "アプリを作ります！"
    p CS_CHAT_PAYLOAD_VERSION
    puts "payload version: #{CS_CHAT_PAYLOAD_VERSION}"
  end

  CS_CHAT_PAYLOAD_VERSION = 1
end

application = Application.new()
application.create