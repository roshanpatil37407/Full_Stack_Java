// =======================
// Sample Array
// =======================
let numbers = [10, 20, 30, 40, 50];
console.log("Original Array:", numbers);

// =======================
// 1. push() → Add element at the end
// =======================
numbers.push(60);
console.log("\npush():", numbers);

// =======================
// 2. pop() → Remove element from the end
// =======================
numbers.pop();
console.log("pop():", numbers);

// =======================
// 3. shift() → Remove element from the beginning
// =======================
numbers.shift();
console.log("shift():", numbers);

// =======================
// 4. unshift() → Add element at the beginning
// =======================
numbers.unshift(5);
console.log("unshift():", numbers);

// =======================
// 5. map() → Apply function to each element & return new array
// =======================
let doubled = numbers.map(num => num * 2);
console.log("\nmap() (doubled):", doubled);

// =======================
// 6. filter() → Returns array with elements passing condition
// =======================
let greaterThan20 = numbers.filter(num => num > 20);
console.log("filter() (>20):", greaterThan20);

// =======================
// 7. reduce() → Reduce array to single value (sum here)
// =======================
let sum = numbers.reduce((acc, curr) => acc + curr, 0);
console.log("reduce() (sum):", sum);

// =======================
// 8. find() → Returns first element matching condition
// =======================
let found = numbers.find(num => num > 20);
console.log("find() (>20):", found);

// =======================
// 9. sort() → Sort elements (default: alphabetically)
// =======================
let numsToSort = [40, 100, 1, 5, 25, 10];
console.log("\nBefore sort():", numsToSort);

// Ascending
numsToSort.sort((a, b) => a - b);
console.log("sort() Ascending:", numsToSort);

// Descending
numsToSort.sort((a, b) => b - a);
console.log("sort() Descending:", numsToSort);
