// ===============================
// ES6 Features Examples
// ===============================

// 1. Template Literals
let name = "Roshan";
let age = 22;

// Normal concatenation
console.log("Normal Concatenation: My name is " + name + " and I am " + age + " years old.");

// Template literal with interpolation
console.log(`Template Literal: My name is ${name} and I am ${age} years old.`);

// Multi-line string
console.log(`Multi-line String:
Line 1
Line 2
Line 3`);

// ===============================
// 2. Destructuring

// Array Destructuring
let colors = ["Red", "Green", "Blue"];
let [first, second, third] = colors;
console.log("Array Destructuring:", first, second, third);

// Object Destructuring
let student = { name: "Roshan", age: 22, course: "BCA" };
let { name: studentName, age: studentAge, course } = student;
console.log("Object Destructuring:", studentName, studentAge, course);

// ===============================
// 3. Spread & Rest Operators

// Spread operator (arrays)
let arr1 = [1, 2, 3];
let arr2 = [4, 5, 6];
let combinedArr = [...arr1, ...arr2];
console.log("Spread Operator (Array):", combinedArr);

// Spread operator (objects)
let obj1 = { a: 1, b: 2 };
let obj2 = { c: 3, d: 4 };
let combinedObj = { ...obj1, ...obj2 };
console.log("Spread Operator (Object):", combinedObj);

// Rest operator
function sumAll(...numbers) {
  return numbers.reduce((acc, curr) => acc + curr, 0);
}
console.log("Rest Operator Sum:", sumAll(1, 2, 3, 4, 5));

// ===============================
// 4. let vs const vs var

// var
var x = 10;
x = 15;
console.log("var x:", x);

// let
let y = 20;
y = 25;
console.log("let y:", y);

// const
const z = 30;
console.log("const z:", z);
// z = 35; // ❌ Error: Assignment to constant variable

// ===============================
// 5. Default Parameters
function greet(name = "Guest") {
  console.log(`Hello, ${name}!`);
}

greet("Roshan"); // Hello, Roshan!
greet();         // Hello, Guest!
