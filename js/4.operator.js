// =============================
// Operators in JavaScript
// =============================

// 1. Arithmetic Operators
console.log("=== Arithmetic Operators ===");
let a = 10, b = 3;
console.log("a + b =", a + b);   // Addition
console.log("a - b =", a - b);   // Subtraction
console.log("a * b =", a * b);   // Multiplication
console.log("a / b =", a / b);   // Division
console.log("a % b =", a % b);   // Modulus (remainder)
console.log("a ** b =", a ** b); // Exponentiation

// 2. Assignment Operators
console.log("\n=== Assignment Operators ===");
let num = 5;
console.log("num =", num);
num += 3; // num = num + 3
console.log("num += 3 →", num);
num -= 2; // num = num - 2
console.log("num -= 2 →", num);
num *= 4; // num = num * 4
console.log("num *= 4 →", num);
num /= 2; // num = num / 2
console.log("num /= 2 →", num);
num %= 3; // num = num % 3
console.log("num %= 3 →", num);

// 3. Comparison Operators
console.log("\n=== Comparison Operators ===");
console.log("5 == '5' →", 5 == "5");   // true (loose equality)
console.log("5 === '5' →", 5 === "5"); // false (strict equality)
console.log("10 != 5 →", 10 != 5);     // true
console.log("10 !== '10' →", 10 !== "10"); // true
console.log("10 > 5 →", 10 > 5);
console.log("10 < 5 →", 10 < 5);
console.log("10 >= 10 →", 10 >= 10);
console.log("10 <= 9 →", 10 <= 9);

// 4. Logical Operators
console.log("\n=== Logical Operators ===");
let x = true, y = false;
console.log("x && y =", x && y); // AND
console.log("x || y =", x || y); // OR
console.log("!x =", !x);         // NOT

// 5. Bitwise Operators
console.log("\n=== Bitwise Operators ===");
let p = 5, q = 1; // (binary: 5 = 101, 1 = 001)
console.log("p & q =", p & q);   // AND → 1
console.log("p | q =", p | q);   // OR  → 5
console.log("p ^ q =", p ^ q);   // XOR → 4
console.log("~p =", ~p);         // NOT → -6
console.log("p << 1 =", p << 1); // Left shift (5 * 2) = 10
console.log("p >> 1 =", p >> 1); // Right shift (5 / 2) = 2

// 6. Ternary Operator
console.log("\n=== Ternary Operator ===");
let age = 18;
let status = (age >= 18) ? "Adult" : "Minor";
console.log("Age check:", status);

// 7. Type Operators
console.log("\n=== Type Operators ===");
console.log("typeof 123 →", typeof 123);       // number
console.log("typeof 'Hello' →", typeof "Hello"); // string
console.log("typeof true →", typeof true);     // boolean
console.log("typeof undefined →", typeof undefined); // undefined
console.log("typeof null →", typeof null);     // object (quirk in JS)
console.log("typeof Symbol() →", typeof Symbol()); // symbol
console.log("typeof 123n →", typeof 123n);     // bigint

// instanceof (checks object type)
let arr = [1, 2, 3];
console.log("arr instanceof Array →", arr instanceof Array); // true
console.log("arr instanceof Object →", arr instanceof Object); // true
