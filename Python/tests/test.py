import os
import sys
import unittest

sys.path.insert(0, os.path.abspath('./src'))
sys.path.insert(0, os.path.abspath('/'))

from plus import add, User

user1 = User({ 'name': 'jummy', 'age': 10 })
user2 = User({ 'name': 'bobby' })

class UserTest(unittest.TestCase):

  def test_profile(self):
    user = User({ 'name': 'jummy', 'age': 10 })
    profile = user.profile()

    self.assertEqual(profile, '私の名前はjummyです。年齢は10才です。')

  def test_add(self):
    self.assertEqual(add(10, 20), 30)


if __name__ == '__main__':
    unittest.main()
