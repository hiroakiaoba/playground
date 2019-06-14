# class NoCountryError < StandardError
# end

# def currency_of(country)
#   case country
#   when :japan
#     'yen'
#   when :us
#     'dollar'
#   when :india
#     'rupee'
#   else
#     raise NoCountryError, '無効な国名です'
#   end
# end

# begin
#   currency = currency_of(:fuga)
#   puts currency
# rescue => e
#   puts "エラーが発生, #{e.class}: #{e.message}"
# end

class NoCountryError < StandardError
  attr_reader :country

  def initialize(message, country)
    @country = country
    super()
  end
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise NoCountryError, '無効な国名です'
  end
end

begin
  currency = currency_of(:fuga)
  puts currency
rescue => e
  puts "エラーが発生, #{e.class}: #{e.message}"
end