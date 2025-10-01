function testScope() {
      if (true) {
        var a = 10;     // function-scoped
        let b = 20;     // block-scoped
        const c = 30;   // block-scoped
        console.log("Inside block:", a, b, c);
      }
      console.log("Outside block - var:", a);  // ✅ Works
      // console.log("Outside block - let:", b); // ❌ Error
      // console.log("Outside block - const:", c); // ❌ Error
    }
    testScope();


    //Lexical scope → a function can access variables from its parent scope, even if called elsewhere.

    function outer() {
      let outerVar = "I am from outer function";

      function inner() {
        console.log(outerVar);  // ✅ has access to outerVar
      }

      inner();
    }

    outer();


     function createCounter() {
      let count = 0; // private variable

      return function () {
        count++;
        return count;
      };
    }

    let counter1 = createCounter();
    console.log(counter1()); // 1
    console.log(counter1()); // 2
    console.log(counter1()); // 3

    let counter2 = createCounter();
    console.log(counter2());