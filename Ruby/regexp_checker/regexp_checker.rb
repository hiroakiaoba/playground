print 'Text?: '
text = gets.chomp

begin
  print 'Pattern?: '
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invalid Pattern #{e.message}"
  retry
end

matches = text.scan(regexp)
if matches.length > 0
  puts "Matches: #{matches.join(', ')}"
else
  puts 'Nothing matched.'
end