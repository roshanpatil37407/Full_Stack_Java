// =======================
// 1. for loop
// =======================
console.log("FOR LOOP:");
for (let i = 1; i <= 5; i++) {
  console.log("Iteration:", i);
}

// =======================
// 2. while loop
// =======================
console.log("\nWHILE LOOP:");
let count = 1;
while (count <= 5) {
  console.log("Count:", count);
  count++;
}

// =======================
// 3. do...while loop
// =======================
console.log("\nDO...WHILE LOOP:");
let num = 1;
do {
  console.log("Number:", num);
  num++;
} while (num <= 5);

// =======================
// 4. for...in loop (used for objects)
// =======================
console.log("\nFOR...IN LOOP:");
let student = { name: "Roshan", age: 21, course: "BCA" };

for (let key in student) {
  console.log(key + ":", student[key]);
}

// =======================
// 5. for...of loop (used for arrays/iterables)
// =======================
console.log("\nFOR...OF LOOP:");
let fruits = ["Apple", "Banana", "Mango", "Orange"];

for (let fruit of fruits) {
  console.log(fruit);
}

// =======================
// 6. break statement
// =======================
console.log("\nBREAK STATEMENT:");
for (let i = 1; i <= 10; i++) {
  if (i === 6) {
    console.log("Loop breaks at:", i);
    break; // exit the loop completely
  }
  console.log("Value:", i);
}

// =======================
// 7. continue statement
// =======================
console.log("\nCONTINUE STATEMENT:");
for (let i = 1; i <= 10; i++) {
  if (i % 2 === 0) {
    continue; // skip even numbers
  }
  console.log("Odd Number:", i);
}
