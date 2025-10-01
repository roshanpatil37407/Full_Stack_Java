// ===============================
// Complete String Methods in JavaScript
// ===============================

let str = "   Hello JavaScript World   ";

// 1. length → length of string
console.log("length:", str.length);

// 2. charAt(index) → character at index
console.log("charAt(6):", str.charAt(6));

// 3. charCodeAt(index) → ASCII code of character
console.log("charCodeAt(6):", str.charCodeAt(6));

// 4. toUpperCase() → convert to uppercase
console.log("toUpperCase():", str.toUpperCase());

// 5. toLowerCase() → convert to lowercase
console.log("toLowerCase():", str.toLowerCase());

// 6. trim() → removes whitespace from start and end
console.log("trim():", `"${str.trim()}"`);

// 7. slice(start, end) → extracts part of string
console.log("slice(3, 15):", str.slice(3, 15));

// 8. substring(start, end) → similar to slice
console.log("substring(3, 15):", str.substring(3, 15));

// 9. substr(start, length) → extracts part of string (deprecated)
console.log("substr(3, 12):", str.substr(3, 12));

// 10. replace(searchValue, newValue) → replace first occurrence
console.log("replace 'JavaScript' with 'Python':", str.replace("JavaScript", "Python"));

// 11. replaceAll(searchValue, newValue) → replace all occurrences
let str2 = "apple banana apple orange apple";
console.log("replaceAll 'apple' with 'mango':", str2.replaceAll("apple", "mango"));

// 12. split(separator) → convert string to array
console.log("split by space:", str.trim().split(" "));

// 13. concat() → join strings
let str3 = "Hello";
let str4 = "World";
console.log("concat():", str3.concat(" ", str4));

// 14. includes() → check if substring exists
console.log("includes 'JavaScript':", str.includes("JavaScript"));

// 15. indexOf() → first occurrence of substring
console.log("indexOf 'JavaScript':", str.indexOf("JavaScript"));

// 16. lastIndexOf() → last occurrence of substring
console.log("lastIndexOf 'l':", str.lastIndexOf("l"));

// 17. startsWith() → check if string starts with substring
console.log("startsWith '   Hello':", str.startsWith("   Hello"));

// 18. endsWith() → check if string ends with substring
console.log("endsWith 'World   ':", str.endsWith("World   "));

// 19. repeat(count) → repeat string
console.log("repeat 3 times:", str.trim().repeat(3));

// 20. template literals → using backticks
let name = "Roshan", age = 22;
console.log(`My name is ${name} and I am ${age} years old.`);

// 21. match() → find matches with regex
let str5 = "I love JavaScript. JavaScript is fun.";
console.log("match /JavaScript/g:", str5.match(/JavaScript/g));

// 22. search() → search regex and return index
console.log("search 'JavaScript':", str5.search("JavaScript"));

// 23. toString() → convert value to string
let num = 123;
console.log("toString():", num.toString());

// 24. valueOf() → returns primitive value of string
let s = new String("Hello");
console.log("valueOf():", s.valueOf());

