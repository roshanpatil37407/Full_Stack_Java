

// Creating a Set
const mySet = new Set([1, 2, 2, 3, 4]);

console.log(mySet); // {1, 2, 3, 4}

// Add values
mySet.add(5);
mySet.add(3); // ignored (duplicate)

// Delete value
mySet.delete(2);

// Check existence
console.log(mySet.has(3)); // true

// Size of set
console.log(mySet.size); // 4

// Iterate
mySet.forEach(v => console.log("Value:", v));
for (let v of mySet) {
    console.log("Iterated Value:", v);
}   


//weakSet example

let obj1 = { name: "A" };
let obj2 = { name: "B" };

const weakSet = new WeakSet([obj1, obj2]);

console.log(weakSet.has(obj1)); // true

weakSet.delete(obj2);

console.log(weakSet.has(obj2)); // false

