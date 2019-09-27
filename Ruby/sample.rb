
# # lower = 'a'..'z'

# # lower_to_upper = lower.each_with_object ({}) do |char, hash|
# #   hash[char] = char.upcase
# # end

# # p lower_to_upper

# # ary = [
# #   { name: 'aoba', age: 22 },
# #   { name: 'hiro', age: 1 }
# # ]

# # newAry = ary.map { |a| a[:name] }
# # p newAry

# # hash = { name: 'aoba', age: 22, hoby: 'hoge' }
# # keys = [:name, :age, :hoby]

# # ary = keys.map(&hash)
# # p ary

# # sendを使ったmethodの呼び出し
# # class Hello
# #   attr_accessor :name, :age

# #   def initialize(_name, _age)
# #     @name = _name
# #     @age = _age
# #   end

# #   def hello
# #     puts "hello!!!"
# #   end

# #   def say
# #     puts "私の名前は#{@name}です。"
# #   end

# #   def room=(_room)
# #     @room = _room
# #   end

# #   def room
# #     @room
# #   end

# #   def call(method_name)
# #     self.send(method_name)
# #   end

# # end

# # hello = Hello.new('aoba', 33)
# # hello.call(:say)

# # hello.room = 'ルーム'
# # p hello.room

# # # protectedとprivate
# # class User
# #   attr_reader :name, :weight

# #   def initialize(_name, _weight)
# #     @name = _name
# #     @weight = _weight
# #   end

# #   def heavier_than?(other_user)
# #     other_user.weight <= self.weight
# #   end

# #   # private :weight # これだとheavier_thanでレシーバから呼び出せない。
# #   protected :weight # これだとレシーバから呼び出せる。

# # end

# # user = User.new('aoba', 110)
# # other_user = User.new('tom', 100)

# # p user.heavier_than?(other_user)

# # superの使い方

# # DVD is a Product
# # DVDはProductの一種である
# # 「is a」の関係という

# # 商品クラス
# class Product
#   attr_accessor :name, :price

#   def initialize(_name, _price)
#     @name = _name
#     @price = _price
#   end

#   def to_s
#     "name: #{name}, price: #{price}"
#   end

# end

# # DVDクラス
# class DVD < Product
#   attr_accessor :running_time

#   def initialize(_name, _price , _running_time)
#     super(_name, _price)
#     @running_time = _running_time
#   end

#   def to_s
#     "#{super}, running_time: #{running_time}"
#   end
# end

# dvd = DVD.new('dynaso', 2500, 1.5)
# puts dvd.to_s

# class Application
#   def create
#     puts "アプリを作ります！"
#     p CS_CHAT_PAYLOAD_VERSION
#     puts "payload version: #{CS_CHAT_PAYLOAD_VERSION}"
#   end

#   CS_CHAT_PAYLOAD_VERSION = 1
# end

# application = Application.new()
# application.create

# module Generator
#   def self.cat(rate = 1)
#     -> (name) {
#       name + 'にゃん' * rate
#     }
#   end
# end

# puts Generator.cat(10).call('リチャード')
# puts Generator.cat.call('リチャード')

# def judge(size)
#   big = Proc.new { |size| size > 100 }
#   medium = Proc.new { |size| size > 50 }
#   small = Proc.new { |size| 50 >= size }

#   case size
#   when big
#     'ビッグサイズ'
#   when medium
#     'ミディアムサイズ'
#   when small
#     'スモールサイズ'
#   end
# end

# puts judge(10)
# puts judge(51)
# puts judge(101)

# sumProc = Proc.new { |a, b| a + b }
# p sumProc === [1, 10]

# puts '----------------------'

# PAYLOAD = 'トップレベルの/v2'

# module TestModule
#   PAYLOAD = '/v2'

#   def payload
#     ::PAYLOAD
#   end

#   def generate_application
#     ::Application.new
#   end
# end

# class PayloadClass
#   include TestModule

#   def call
#     payload
#   end
# end

# payloadClass = PayloadClass.new
# p payloadClass.call
# application = payloadClass.generate_application
# p application.create

# class Sample
#   attr_writer :age

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def say
#     @name
#   end

#   def info
#     @age
#   end
# end

# sample = Sample.new('hoge', 20)
# sample.age = 100
# p sample.info

def say(name:, age:)
  p name
end

say(name: 100, age: 100)