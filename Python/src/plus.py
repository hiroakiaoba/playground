def add(x, y):
  return x + y

class User():
  def __init__(self, orgs):
    self._name = orgs.get('name', 'ノーネーム')
    self._age = orgs.get('age', '年齢不詳')

  def profile(self):
    text = '私の名前は' + self._name + 'です。年齢は' + str(self._age) + '才です。'
    return text

  @property

  def name(self):
    return self.name

  def age(self):
    return self.age