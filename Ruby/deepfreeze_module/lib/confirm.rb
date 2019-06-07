require './lib/deepfreezable'

class Team
  extend DeepFreezable

  COUNTRIES = freeze_array_or_hash(['Japan', 'US', 'India'])
end

class Bank
  extend DeepFreezable

  CURRENCIES = freeze_array_or_hash(
    {'Japan' => 'yan', 'US' => 'dollar', 'India' => 'ruppe'}
  )
end