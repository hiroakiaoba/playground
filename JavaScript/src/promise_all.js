const setFunc1 = new Promise((res, rej) => {
  setTimeout(() => {
    res('func1 finished');
  }, 6000);
});

const setFunc2 = new Promise((res, rej) => {
  setTimeout(() => {
    // res('func2 finished');
    rej('func2 rejected');
  }, 4000);
});

const setFunc3 = new Promise((res, rej) => {
  setTimeout(() => {
    res('func3 finished');
  }, 1000);
});

(async() => {

  try {
    const [result1, result2, result3] = await Promise.all([
      setFunc1,
      setFunc2,
      setFunc3,
    ])
    console.log(result1, result2, result3);
  } catch(error) {
    console.log('------------ error');
    console.log(error);
  }

})();