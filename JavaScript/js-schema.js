const schema = require('js-schema');

const Person = {
  name: String,
  age: Number,
}

PersonSchema = schema(Person);

const hoge = {
  name: 'hoge',
  age: 111,
}

const piyo = {
  name: 'piyo',
  age: 10,
  other: 'ok',
}

const huga = {
  name: 'huga',
}

console.log(PersonSchema(hoge)); // true
console.log(PersonSchema(piyo)); // true
console.log(PersonSchema(huga)); // false
