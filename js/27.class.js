class Animal{
    constructor(name){
        this.name = name;
    }
    speak(){
        console.log(`${this.name} makes a noise.`);
    }
}
class Dog extends Animal{
    constructor(name, breed){
        super(name);
        this.breed = breed;
    }   

    speak(){
        console.log(`${this.name} barks.`);
    }   
    info(){
        console.log(`${this.name} is a ${this.breed}.`);
    }   
}
let dog1 = new Dog("Rex", "German Shepherd");
dog1.speak();
dog1.info();
console.log(dog1 instanceof Dog);
console.log(dog1 instanceof Animal);
console.log(dog1 instanceof Object);
console.log(Dog.prototype.__proto__ === Animal.prototype); // true
console.log(Animal.prototype.__proto__ === Object.prototype); // true

// console.log(Dog.prototype.__proto__.__proto__ === Object.prototype); // true
// console.log(Dog.prototype.__proto__.__proto__.__proto__); // null (end of chain) 