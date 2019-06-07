module DeepFreezable

  def hello
    "hello"
  end

  private

  def freeze_array_or_hash(array_or_hash)
    case array_or_hash
    when Hash
      array_or_hash.map do |key, value|
        key.freeze
        value.freeze
      end
    when Array
      array_or_hash.map(&:freeze)
    end

    array_or_hash.freeze
  end

end