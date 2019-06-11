module A
  def to_s
    "Aのto_sです #{super}"
  end
end

module B
  def to_s
    "Bのto_sです #{super}"
  end
end

class User
  prepend A
  prepend B

  def to_s
    'Userクラスのto_sです'
  end
end

user = User.new
puts user.to_s
p User.ancestors

# -------------------------------------------------------------------
# prependを使うと、ミックスインしたクラスよりも先にモジュールのメソッドが呼ばれる。
# これを利用した例として、オリジナルの実装を活かした既存メソッドの置き換えがある↓

# prependを使わないと
module NotUsingPrepend
  class Product
    def name
      'A greate film'
    end
  end

  product = Product.new
  puts product.name
  # => A greate film

  class Product
    alias name_original name

    def name
      "<<#{name_original}>>"
    end
  end

  product = Product.new
  puts product.name
  # => <<A greate film>>
end

# prependを使うと
module UsingPrepend
  class Product
    def name
      'A greate film'
    end
  end

  module NameDecorator
    def name
      "<<#{super}>>"
    end
  end

  product = Product.new
  puts product.name
  # => A greate film

  class Product
    prepend NameDecorator
  end

  product = Product.new
  puts product.name
  # => <<A greate film>>
end

module UsingPrependNext
  class Product
    def name
      'A greate film'
    end
  end

  module NameDecorator
    def name
      "<<#{super}>>"
    end
  end

  Product.prepend(NameDecorator)
  product = Product.new
  p Product.ancestors
  puts product.name
end
# ---------------------------------------------------------------------