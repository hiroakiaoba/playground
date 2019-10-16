# original_list = list(range(10)) # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# mapped_list = map(lambda x: x**2, original_list)

# print(list(mapped_list))

# li = [1, 2, 3, 4, 5]

# mapped_li = map(lambda x: x+100, li)
# print(list(mapped_li))

# func = lambda x: x+3
# print(func(100))

# ------------------------------------------

# class User:
#   def __init__(self, name):
#     self.name = name

#   def sayHello(self):
#     text = '私の名前は' + self.name
#     return text

# def get_users(user_names = []):
#   return list(map(User, user_names))

# names = ['青色', '緑色', '黄色', '赤色']
# users = get_users(names)

# for user in users:
#   print(user.sayHello())

# ----------------------------------------------

# is_bool = 1 in [1, 2, 3, 4]

# li = ['aoba', 'hiro', 'abe']

# def check(name):
#   return name in li and 'ok'

# print(check('aoba'))

# ------------------------------------------------

# class Person():

#     def __init__(self, input_name):
#         self.hidden_name = input_name

#     def get_name(self):
#         print('get_nameが呼び出されました')
#         return self.hidden_name

#     def set_name(self, input_name):
#         print('set_nameが呼び出されました')
#         self.hidden_name = input_name

#     name = property(get_name, set_name)

# person = Person('aoba')
# print(person.name)
# person.name = 'update_aobae'
# print(person.name)

# --------------------------------------------------

# class Person():

#   def __init__(self, name, age):
#     self.profile = { 'name': name, 'age': age }

#   # def name(self):
#   #   return self.profile['name']

#   @property

#   def name(self):
#     return self.profile['name']

#   @name.setter

#   def name(self, input_name):
#     self.profile['name'] = input_name

# person = Person('aoba', 28)
# print(person.name)
# person.name = 'update_name'
# print(person.name)

# --------------------------------------------------

# print(type(None))
# print(id(None))

# li = [1, 2, 3, 4]
# print(id(li))

# ---------------------------------

# num = 5

# if num == 1:
#   print('numは1')
# elif num == 5:
#   pass
# else:
#   print('それ以外')

# ----------------------------------

# dict = { 'name': 'aoba', 'age': 20, 'gender': 'male' }
# print(dict.get('gender', 'genderは存在しないよ！'))

# ----------------------------------

# print('{0}さんは{1}才です'.format('jonny', 10))

# ----------------------------------

li = [1, 2, 3]
li.extend([4, 5, 6])
print(li)