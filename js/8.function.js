// =======================
// 1. Function Declaration
// =======================
function greet() {
  console.log("Hello, Roshan!");
}
greet(); // call

// =======================
// 2. Function Expression
// =======================
const greetExpr = function () {
  console.log("Hello, from Function Expression!");
};
greetExpr();

// =======================
// 3. Parameters & Return Values
// =======================
function add(a, b) {
  return a + b;
}
let sum = add(10, 5);
console.log("Sum:", sum);

// =======================
// 4. Arrow Functions
// =======================
const multiply = (x, y) => x * y;
console.log("Multiplication:", multiply(4, 5));

// =======================
// 5. Default Parameters
// =======================
function welcome(name = "Guest") {
  console.log("Welcome, " + name + "!");
}
welcome("Roshan"); // uses "Roshan"
welcome(); // uses default "Guest"

// =======================
// 6. Rest Parameters
// =======================
function sumAll(...numbers) {
  let total = 0;
  for (let num of numbers) {
    total += num;
  }
  return total;
}
console.log("Total Sum:", sumAll(1, 2, 3, 4, 5));
