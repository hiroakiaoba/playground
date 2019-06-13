class Car
  def drive
    puts 'ok'
  end
end

car = Car.new

begin
  1 / 0
  # car.drive
  # car.stop
rescue ZeroDivisionError => e
  puts "ゼロでは割れません: #{e.class}"
rescue => e
  puts "その他のエラー: #{e.class}"
ensure
  puts 'プログラムが終了しました'
end