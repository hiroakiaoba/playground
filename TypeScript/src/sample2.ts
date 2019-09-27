// type Args = [string, number, boolean];

// const func = (...args: Args) => args[1];

// const v = func('foo', 3, false);

// console.log(v);

// type Args = [string, ...number[]];

// const func = (f: string, ...args: Args) => args[0];

// const v1 = func('foo', 'bar');
// const v2 = func('foo', 'bar', 1, 2, 3);

// const func = (str: string, num: number, b: boolean) => args[0] + args[1];

// const args: [string, number, boolean] = ['foo', 3, false];

// const test = func(...args);

// function func<T>(obj: T): void {
//   console.log(obj);
// }

// const f: <T>(obj: T)=> void = func;

// f<number>(1);

// interface Foo<T, S> {
//   foo: T,
//   bar: S
// }

// const obj: Foo<number, number> = {
//   foo: 2,
//   bar: 10,
// }

// console.log(obj);

// function func<T>(obj: T): void {
//   console.log(obj);
// }

// func('test');