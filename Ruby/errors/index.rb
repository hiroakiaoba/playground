
# begin
#   puts 'どうもです！'
#   1 / 0
#   puts 'さようなら〜'
# rescue => e
#   puts "クラス: #{e.class}, メッセージ: #{e.message}"
#   puts 'バックトレース------------'
#   puts e.backtrace
# end

# def method_A
#   puts 'A is called'
#   method_B
#   puts 'A finished'
# end

# def method_B
#   puts 'B is called'
#   puts 'B finished'
# end


# begin-endを省略出来る。
# ただし、Errorクラスの指定は出来ず、StandardErrorのキャッチとなる
# num = 1 / 0 rescue 0
# puts num

# メソッド内をすべてbegin-endで囲む場合は省略出来る。
def fizz_buzz(n)
  if n % 15 == 0
    'Fizz Buzz'
  elsif n % 5 == 0
    'Fizz'
  elsif n % 3 == 0
    'Buzz'
  else
    n.to_s
  end
rescue => e
  puts 'エラーが発生しました'
  puts "#{e.class}: #{e.message}"
end

num = 0

while num <= 100
  puts fizz_buzz(num)
  num += 1
end