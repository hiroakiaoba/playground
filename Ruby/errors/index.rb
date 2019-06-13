
begin
  puts 'どうもです！'
  1 / 0
  puts 'さようなら〜'
rescue => e
  puts "クラス: #{e.class}, メッセージ: #{e.message}"
  puts 'バックトレース------------'
  puts e.backtrace
end

def method_A
  puts 'A is called'
  method_B
  puts 'A finished'
end

def method_B
  puts 'B is called'
  puts 'B finished'
end

