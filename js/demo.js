let text= "Hello, welcome to the demo of JavaScript.";
console.log("text search:", text.search("demo/")); 
console.log("text mathch:", text.match(/demo/gi));
console.log("text replace:", text.replace("demo", "example"));


let text2="100 % guaranteed";
const pattern = /\d/g;


console.log("text2 match:", text2.match(pattern));

const pattern2 = /\w/g;

console.log("text2 match:", text2.match(pattern2));



