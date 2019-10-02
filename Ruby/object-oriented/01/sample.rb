User = Struct.new(:name, :age) do
  def say_hello
    puts "私は#{name}、#{age}才です。"
  end
end

user = User.new('takeshi', 20)
puts user.say_hello