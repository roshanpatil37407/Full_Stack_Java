// =============================
// Control Flow with if/else examples
// =============================

// 1. Simple if
console.log("=== if statement ===");
let num1 = 10;
if (num1 > 5) {
  console.log(num1, "is greater than 5");
}

// 2. if...else
console.log("\n=== if...else statement ===");
let num2 = 4;
if (num2 % 2 === 0) {
  console.log(num2, "is Even");
} else {
  console.log(num2, "is Odd");
}

// 3. if...else if
console.log("\n=== if...else if statement ===");
let marks = 75;
if (marks >= 90) {
  console.log("Grade: A+");
} else if (marks >= 75) {
  console.log("Grade: A");
} else {
  console.log("Grade: B");
}

// 4. if...else if ladder
console.log("\n=== if...else if ladder ===");
let temperature = 28;

if (temperature < 0) {
  console.log("Freezing Cold");
} else if (temperature >= 0 && temperature < 10) {
  console.log("Very Cold");
} else if (temperature >= 10 && temperature < 20) {
  console.log("Cold");
} else if (temperature >= 20 && temperature < 30) {
  console.log("Warm");
} else if (temperature >= 30 && temperature < 40) {
  console.log("Hot");
} else {
  console.log("Very Hot");
}
// 5. Nested if
console.log("\n=== Nested if statement ===");
let username = "admin";
let password = "1234";
if (username === "admin") {
    if (password === "1234") {
        console.log("Login Successful");
    } else {
        console.log("Incorrect Password");
    }
}