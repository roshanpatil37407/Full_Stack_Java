function divide(a, b) {
      if (b === 0) {
        throw new Error("Division by zero is not allowed!");
      }
      return a / b;
    }

    try {
      let result = divide(10, 0);  // ❌ Error
      console.log("Result:", result);
    } 
    catch (error) {
      console.log("Caught an error:", error.message);
    }
    finally {
      console.log("End of program");
    }