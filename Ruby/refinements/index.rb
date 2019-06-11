module StringShuffle
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end

class User
  using StringShuffle

  def initialize(name)
    @name = name
  end

  def shuffled_name
    @name.shuffle
  end
end

user = User.new('BobJenny')
p user.shuffled_name