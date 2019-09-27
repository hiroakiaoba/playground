// class Person {
//   constructor(private name: string,private sex: string,private age: number) {
//     this.name = name;
//     this.sex = sex;
//     this.age = age;
//   }

//   public show() {
//     return `${this.name}は${this.sex}で${this.age}才です。`
//   }
// }

// class Person {
//   private _age: number;

//   get age(): number {
//     return this._age
//   }

//   set age(value: number) {
//     if (value < 0) {
//       throw new RangeError('ageプロパティを正数で指定してください。');
//     }
//     this._age = value;
//   }
// }

// {
//   let p = new Person();
//   p.age = -1;
//   console.log(p.age);
// }

// class Figure {
//   public static Pi: number = 3;
//   public static circle(radius: number): number {
//     return radius * radius * this. Pi;
//   }
// }

// console. log(Figure.Pi);
// console. log(Figure.circle(5));

class Person {
  protected name: string;
  protected age: number;

  constructor(name: string, age: number) {
    this.name = name;
    this.age = age;
  }
  show(): string {
    return `${this.name}さんは${this.age}才です`
  }
}

class BusinessPerson extends Person {
  work(): string {
    return `${this.name}はテキパキと働きます。`;
  }
}

{
  const p = new BusinessPerson('おかし', 3);
  console.log(p.work());
}

class UserFactory {
  static userName: string|null = null;

  static getinstance(): string {
    if (this.userName === null) {
      this.userName = 'user name!!!';
    }
    return this.userName;
  }

  getName(): string {
    console.log(UserFactory.userName);
    return 'aoba';
  }
}


const userFactory = new UserFactory();
userFactory.getName();
UserFactory.getinstance();
userFactory.getName();