// ===============================
// JavaScript Objects & JSON Examples
// ===============================

// 1. Creating Objects

// a) Object Literal
let student = {
  name: "Roshan",
  age: 22,
  course: "BCA"
};
console.log("Object Literal:", student);

// b) Using new Object()
let student2 = new Object();
student2.name = "Bhupendra";
student2.age = 21;
student2.course = "BCA";
console.log("new Object():", student2);

// ===============================
// 2. Accessing Properties

// Dot notation
console.log("Dot notation:", student.name); // Roshan

// Bracket notation
console.log("Bracket notation:", student["age"]); // 22

// Adding new property
student.city = "Pune";
console.log("After adding city:", student);

// ===============================
// 3. this Keyword

let person = {
  name: "Amit",
  age: 20,
  greet: function () {
    console.log(`Hello, my name is ${this.name} and I am ${this.age} years old.`);
  }
};
person.greet(); // Hello, my name is Amit and I am 20 years old.

// ===============================
// 4. Object Methods

// Object.keys()
console.log("Object.keys():", Object.keys(student));

// Object.values()
console.log("Object.values():", Object.values(student));

// Object.entries()
console.log("Object.entries():", Object.entries(student));

// ===============================
// 5. JSON Basics

let studentObj = { name: "Roshan", age: 22, course: "BCA" };

// Object → JSON
let jsonStr = JSON.stringify(studentObj);
console.log("JSON String:", jsonStr);

// JSON → Object
let objFromJson = JSON.parse(jsonStr);
console.log("Parsed Object:", objFromJson);

// ===============================
// 6. Nested Object Example
let company = {
  name: "Tech Corp",
  employees: [
    { name: "Roshan", age: 22 },
    { name: "Bhupendra", age: 21 },
    { name: "Amit", age: 20 }
  ],
  location: "Pune"
};

console.log("Company Name:", company.name);
console.log("First Employee Name:", company.employees[0].name);
console.log("Company JSON:", JSON.stringify(company));
