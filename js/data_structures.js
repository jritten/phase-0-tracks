// Challenge 7.2: Data Structures

// https://repl.it/IZpT/1

// Release 0: Work with Arrays

// In your new file, declare two separate arrays:
// 1. an array of four colors ("blue", for instance, though you're welcome to 
// get crazy with something like "iridescent blue/green with silver sparkles")
// 2. an array of four names that you might give a horse 
// ("Ed" is always a solid choice to start with)
// 3.Write additional code that adds another color to the colors array, 
// and another horse name to the horses array.

var names = ["Secretariat", "Sea Biscuit", "Man o' War", "Red Rum", "American Pharaoh"];
var colors = ["palomino", "cremello", "buckskin", "perlino", "smoky black"];

// add name to array
names.push("Boo")
// add color to array
color.push("aquamarine")

// Release 1: Build an Object

// We need to assign colors to horses. In data_structures.js, add code that will 
// use your two arrays to create an object. The keys of your object should be 
// horse names, and the values should be colors. Your solution should be something 
// that would work for any number of colors/horses, as long as the two arrays are 
// the same length. This is a logical reasoning step -- try to think it through 
// instead of Googling it.

var horses = {}

function Horse(name, color) {
	this.name = name;
	this.color = color;

	for (var i = 0; i < colors.length; i++) {
	horses[names[i]] = colors[i];

}

var newHorse = new Horse(names.sample, colors.sample);
console.log(newHorse);

// Release 2: Build Many Objects Using a Constructor

// Horses are great, but times are a-changin', and we need to add an option for 
// faster transportation that we can create with an assembly line. At the bottom 
// of your data_structures.js file, write a constructor function for a car. Give 
// it a few different properties of various data types, including at least one 
// function. Demonstrate that your function works by creating a few cars with it.

function Car(make, model, color) {
	this.make = make;
	this.model = model;
	this.color = color;
	this.accelerate = function () {console.log('The car begins to accelerate');}
}

var newCar = new Car("Chevy", "Cruze", "black");
newCar.accelerate()
console.log(NewCar)
console.log(new Cars("Cadillac", "Escalade", "champagne"))

// Release 3: Research on Your Own

// If you wanted to loop through the keys and values of an object, 
// how would you do that? (There are a few ways to accomplish this, 
// and some gotchas that can happen depending on your approach.)
// Are there advantages to using constructor functions to create objects? 
// Disadvantages? 
