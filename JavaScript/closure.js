const func = (() => {
  let num = 1;

  return {
    increment: () => {
      num++;
    },
    plus_ten() {
      num += 10;
    },
    show: () => {
      console.log(num);
    }
  }
})();

func.increment();
func.increment();
func.increment();
func.increment();
func.increment();
func.increment();
func.increment();
func.plus_ten();
func.show();
