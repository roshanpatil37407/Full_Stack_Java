function person(name , age){
    this.name = name;
    this.age = age;
}

person.prototype.greet = function(){
    console.log(`Hello, my name is ${this.name} and I am ${this.age} years old.`);
}   

let person1 = new person("Alice", 30);
let person2 = new person("Bob", 25);
person1.greet(); // Hello, my name is Alice and I am 30 years old.
person2.greet(); // Hello, my name is Bob and I am 25 years old.

console.log(person1 instanceof person); // true
console.log(person2 instanceof person); // true


let arr = [1, 2, 3];

    console.log(arr.__proto__ === Array.prototype); // true
    console.log(arr.__proto__.__proto__ === Object.prototype); // true
    console.log(arr.__proto__.__proto__.__proto__); // null (end of chain)