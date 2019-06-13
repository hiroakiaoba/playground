
def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # エラーを発生させ、classとメッセージを指定している
    raise ArgumentError, '無効な国名です'
  end
end

begin
  currency = currency_of(:ind)
  puts currency
rescue => e
  puts "#{e.class}: #{e.message}"
ensure
  puts 'プログラムが終了しました'
end