const schema = require('js-schema');

const Person = {
  name: [String, null],
  age: Number,
}

PersonSchema = schema(Person);

const hoge = {
  'name': 'hoge',
  'age': 111,
}

const piyo = {
  name: 'piyo',
  age: 10,
  other: 'ok',
}

const huga = {
  name: 'huga',
}

const withNull = {
  name: null,
  age: 20
}

const withEmptyString = {
  name: '',
  age: 100,
}

// console.log(PersonSchema(hoge)); // true
// console.log(PersonSchema(piyo)); // true
// console.log(PersonSchema(huga)); // false
// console.log(PersonSchema(withNull));
// console.log(PersonSchema(withEmptyString));

const ObjectSchema = { hoge: String };

const Test = {
  "?name": [String, { hoge: String }],
  "age": Number
}

const TestSchema = schema(Test)

const foo = {
  "name": "aoba",
  "age": 10
}

const foo1 = {
  "age": 10
}

const foo2 = {
  "name": "",
  "age": 10
}

const foo3 = {
  "hoge": "miso",
  "age": 200
}

const foo4 = {
  "name": { hoge: "miso", miso: 'ok' },
  "age": 200
}

console.log(TestSchema(foo));
console.log(TestSchema(foo1));
console.log(TestSchema(foo2));
console.log(TestSchema(foo3));
console.log(TestSchema(foo4));
