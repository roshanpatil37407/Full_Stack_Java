// Iterator Example
    function createIterator(array) {
      let index = 0;
      return {
        next: function () {
          if (index < array.length) {
            return { value: array[index++], done: false };
          } else {
            return { value: undefined, done: true };
          }
        }
      };
    }
    const iterator = createIterator([10, 20, 30]);
    console.log(iterator.next()); // { value: 10, done: false }
    console.log(iterator.next()); // { value: 20, done: false }
    console.log(iterator.next()); // { value: 30, done: false }
    console.log(iterator.next()); // { value: undefined, done: true }

    // Generator Example
    function* numberGenerator() {
      yield 1;
      yield 2;
      yield 3;
    }
    const gen = numberGenerator();
    console.log(gen.next()); // { value: 1, done: false }
    console.log(gen.next()); // { value: 2, done: false }
    console.log(gen.next()); // { value: 3, done: false }
    console.log(gen.next()); // { value: undefined, done: true }