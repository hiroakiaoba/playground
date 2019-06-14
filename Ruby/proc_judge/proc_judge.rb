def judge(age)

  adult = Proc.new { |age| age > 20 }
  child = Proc.new { |age| age < 20 }

  case age
  when adult
    '大人です'
  when child
    '子供です'
  else
    'はたちです'
  end

end