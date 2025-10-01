// =======================
// 1. Array Literal (most common)
// =======================
let fruits = ["Apple", "Banana", "Mango", "Orange"];
console.log("Array Literal:", fruits);
console.log("First Fruit:", fruits[0]);
console.log("Third Fruit:", fruits[2]);

// =======================
// 2. Using new Array()
// =======================
let numbers = new Array(10, 20, 30, 40);
console.log("\nUsing new Array():", numbers);
console.log("Second Number:", numbers[1]);

// =======================
// 3. Empty Array and Adding Later
// =======================
let students = [];
students[0] = "Roshan";
students[1] = "Bhupendra";
students[2] = "Amit";
console.log("\nEmpty Array then Add:", students);

// =======================
// 4. Mixed Data Types
// =======================
let mixed = ["Hello", 123, true, { name: "Roshan" }, [1, 2, 3]];
console.log("\nMixed Data Types:", mixed);

// =======================
// 5. Array of Objects
// =======================
let users = [
  { name: "Roshan", age: 21 },
  { name: "Bhupendra", age: 22 },
  { name: "Amit", age: 20 }
];
console.log("\nArray of Objects:", users);
console.log("First User Name:", users[0].name);
console.log("Second User Age:", users[1].age);

// =======================
// 6. Using Array Constructor with Length
// =======================
let emptyArray = new Array(5); // creates empty slots
console.log("\nArray Constructor with Length (5 slots):", emptyArray);
console.log("Length:", emptyArray.length);

// =======================
// 7. Using Array.of()
// =======================
let arrOf = Array.of(5, 10, 15, 20);
console.log("\nArray.of():", arrOf);

// =======================
// 8. Using Array.from() (convert iterable to array)
// =======================
let str = "Roshan";
let arrFrom = Array.from(str);
console.log("\nArray.from():", arrFrom);
