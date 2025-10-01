// Creating a Map
const myMap = new Map();

myMap.set("name", "Roshan");
myMap.set(100, "Score");
myMap.set({ id: 1 }, "Object Key");

// Access
console.log(myMap.get("name")); // Roshan

// Check existence
console.log(myMap.has(100)); // true

// Size
console.log(myMap.size); // 3

// Delete
myMap.delete("name");

// Iterate
for (let [key, value] of myMap) {
  console.log(key, ":", value);
}
myMap.forEach((value, key) => {
  console.log(key, "=>", value);
});

// WeakMap example
const weakMap = new WeakMap();
let objKey = { id: 1 };
weakMap.set(objKey, "WeakMap Value");