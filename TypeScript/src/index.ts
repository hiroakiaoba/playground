// {
//   let test: string = 'テストです';
//   let test2: boolean = false;
//   let test3: number = 111;

//   const array: string[] = ['Java', 'Ruby', 'Python'];
//   const array2: Array<string> = ['この', '書き方でも', 'いけるが', '使わない'];
//   const array3: number[][] = [[10, 20], [30, 40]];

//   const Object: { [index: string]: string } = { name: '青葉' };

//   interface StringMap {
//     [index: string]: string
//   }

//   const Object2: StringMap = { name: 'test' }

//   enum Sex {
//     MALE,
//     FEMALE,
//     UNKNOWN
//   }
//   let m: Sex = Sex.MALE;
// }

// {
//   const data: [string, number, boolean] = ['hoge', 10.355, false];
// }

// {
//   let data: string | boolean;
//   data = 'hoge';
//   data = false;
// }

// {
//   let data: (string | number)[] = ['ほげ', 108, 'hoge'];
// }

// {
//   type FooType = [ string, number, boolean ];
//   let data: FooType = ['abc', 108, false];
// }

// {
//   type Season = 'spring' | 'summer' | 'autumn' | 'winter';
//   function getScene(s: Season) {
//   }
//   getScene('spring');
// }

// {
//   function triangle(base: number, height: number): number {
//     return base * height / 2;
//   }
// }

// // 関数の型を明示する
// {
//   let triangle: (base: number, height: number) => number =
//     function (base: number, height: number): number {
//       return base * height / 2;
//     }
// }

// {
//   function showTime(time: Date = new Date()): string {
//     return '現在の時刻：' + time.toLocaleString();
//   }
// }

// {
//   const func = (base: number = 10, height: number = 20): number => {
//     return base * height / 2
//   }
// }

// {
//   function process(value: string | number) {
//     if (typeof value === 'string') {
//       return value.toUpperCase();
//     } else {
//       return value.toFixed(1);
//     }
//   }
// }

// console.log('test');

// class User {
//   private _name: string;
//   private _age: number;

//   constructor(name: string, age: number) {
//     this._name = name;
//     this._age = age;
//   }

//   get name() {
//     return this._name
//   }

//   set name(value: string) {
//     this._name = value;
//   }
// }

// const user = new User('aoba', 28);
// console.log(user.name);
// user.name = 'hiroaki';
// console.log(user.name);

// {
  // const name: string = 'aoba';
  // type User = typeof name;
  // const name2: User = 'test';
  // console.log(name2);

  // const TEST_TYPE = 'TEST_TYPE';
  // const func = () => ({
  //   type: TEST_TYPE as typeof TEST_TYPE,
  // })
  // type FuncType = ReturnType<typeof func>;
  // const obj: FuncType = { type: 'TEST_TYPE' };
  // console.log(obj);
// }

// {
//   let num: number | undefined;
//   console.log(num);
// }

// {
//   const obj = {
//     name: 'aoba',
//     age: 11,
//   }
//   const obj2: { name: string, age: number } = obj;
//   console.log(obj2);
// }

// {
//   const num: number = 1;
//   const str: string = 'test'
//   const or = num || str;
//   let test = num || str;
// }

// {
//   const num: number = 0;
//   const and = num && 'trst';
//   console.log(and);
// }

// {
//   type Obj = { foo: string };
//   const objOrNull: Obj | null = null;
//   const obj = objOrNull || { foo: '' };
// }

// {
//   type Obj = { foo: string };
//   let objOrNull: Obj | null;

//   if (Math.random() < 0.5) {
//     objOrNull = { foo: "123" };
//   } else {
//       objOrNull = null;
//   }

//   if (objOrNull !== null) {
//     console.log(objOrNull.foo);
//   } else {
//     console.log(objOrNull);
//   }
// }

// {
//   function func(str: string | null, defaultLength: number): number {
//     return str != null ? str.length : defaultLength;
//   }

//   const newFunc: (str:string | null, defaultLength: number) => number = func;

//   const lenthFunc: (str: string | null, defaultLength: number) => number =
//     (str, defaultLength) => {return str != null ? str.length : defaultLength };

//   console.log(lenthFunc(null, 10));
// }

/* 関数の戻り値は推論される */
// {
//   function generateStr(num: number) {
//     if (num < 5) {
//       return 'piyo';
//     } else {
//       return 'hoge';
//     }
//   }

//   function numberOrNot(num: number) {
//     if (num < 5) {
//       return 'hoge';
//     }
//   }

//   console.log(numberOrNot(2));
//   // => 'hoge'
//   console.log(numberOrNot(10));
//   // => undefinded
// }

// {
//   const obj: { [key: number]: number } = {
//     1: 10,
//     2: 20,
//     10: 30
//   }

//   interface Obj {
//     [key: number]: number;
//     foo: string;
//     bar: string;
//   }

//   const obj2: Obj = {
//     1: 100,
//     2: 200,
//     3: 300,
//     foo: 'foo',
//     bar: 'bar',
//   }

//   console.log(obj2);

// }

{
  enum UtterncerType {
    User,
    System,
    Operator,
  }

  console.log(UtterncerType.User);
  console.log(UtterncerType.System);
  console.log(UtterncerType.Operator);

  class User {
    private _name: string;
    private _age: number;

    constructor(name: string, age: number) {
      this._name = name;
      this._age = age;
    }

    public fullName() {
      console.log(`${this._name}です。${this._age}才です。`);
    }
  }

  const user = new User('aoba', 1);
  const userType: User = {
    fullName: () => { console.log('hello'); },
    _name: 'ok',
    _age: 10,
  }
  userType.fullName();
}