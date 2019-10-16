# num = 1

# if num == 10:
#   print('hello world!')
# else:
#   print('not hello( ﾟдﾟ )')

# list = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']

# for n in list:
#   print(n)

# print(list[0:8:1])

# list1 = [1, 2, 3]
# list2 = [4, 5, 6]

# joined_list = list1 + list2

# print(joined_list)
# print(len(joined_list))

# t = (1, 2, 3, 4)
# list = [1, 2, 3, 4]

# tuple = list(t)

# print(tuple[0])
# tuple[0] = 100
# print(tuple[0])

# d = {'Aoba': 28, 'Suzuki': 30, 'okmi': 10}

# i = 1
# for k, v in d.items():
#   print(i)
#   print(k)
#   print(v)
#   i = i + 1

# for k in d.keys():
#   print(d[k])

# for v in d.values():
#   print(v)

# for n in [1, 2, 3]:
#   print(n)
# else:
#   print('END')

# def add(a, b):
#   return a + b

# print(add(10, 29))

# def repeat_message(msg, repeat = 3):
#   for i in range(repeat):
#     print(i + 1)
#     print(msg)

# repeat_message('メッセージ', 10)

# class Spam:
#   val = 100

#   def ham(self):
#     self.egg('call method')

#   def egg(self, msg):
#     print("{0}".format(msg))
#     print(("{0}".format(self.val)))

# spam = Spam()
# spam.ham()

# class Spam:
#   def __init__(self, ham, egg):
#     self.ham = ham
#     self.egg = egg

#   def output(self):
#     sum = self.ham + self.egg
#     print("{0}".format(sum))

# spam = Spam(5,10)
# spam.output()

# items = ['test1', 'test2', 'test3', 'test4']
# print('test' in items)

# taa = (1, 2, 3, 4)
# li  = [1, 2, 3, 4]

# print(li)
# li.append(5)
# print(li)
# li[0] = 100
# print(li)

# class User():
#   def __init__(self, name):
#     self.name = name

#   def sayHello(self):
#     text = '私は' + self.name + 'です'
#     print(text)

# user = User('青羽')
# user.sayHello()

import openpyxl

wb = openpyxl.load_workbook('sample.xlsx')
# print(type(wb))

# print(wb.sheetnames)

print(wb.worksheets)

sheet = wb['シート1']

# print(type(sheet))

cell = sheet['A2']

# print(type(cell))

# print(cell.value)
