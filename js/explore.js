// Challenge 7.1: Syntax

// Release 4: Write a JavaScript Program

// 1. Ruby has lots of handy functions like .reverse, but in JavaScript, 
// we mostly have to write our own. In comments, pseudocode a function 
// that takes a string as a parameter and reverses the string. 
// reverse("hello"), for example, should return "olleh". This isn't a 
// task specific to JavaScript -- your pseudocode should be in plain 
// English and use phrases like "for each" instead of JavaScript-specific 
// terms. Remember that you can add strings in JavaScript, so '' + 'a' 
// would result in the string 'a'. Take your time. This is the most 
// valuable skill in programming: being able to think through a problem 
// logically.
// 2. Under your commented pseudocode, implement your function in JavaScript. 
// Test it with driver code if you like. Anytime you'd like to run your 
// code, you can run node explore.js from the js folder in your terminal, 
// similar to how you run Ruby programs.
// 3. Add driver code that calls the function in order to reverse a string 
// of your choice (as long as it's not a palindrome!), and stores the 
// result of the function in a variable.
// 4. Add driver code that prints the variable if some condition is true. 
// The condition can be a silly one, like 1 == 1.

// PSEUDOCODE
// function takes a string as a parameter
// function reverses the string
// split method splits an object into an array of strings
// reverse method reverses an array in place
// join method joins all the elements of an array into a string
// prints the string to console

// function reverseString(str) {
// 	return(str);
// }

function reverseString(str) {

	// use split() to return a new array
	var splitString = str.split("");
	// ["h", "e", "l", "l", "0"]

	// use reverse() to reverse the new array
	var reverseArray = splitString.reverse();
	// ["o", "l", "l", "e", "h"]

	// use join() to join all elements of the array into a string
	var joinArray = reverseArray.join("");
	// "olleh"

	// return the reversed string
	return joinArray;
	// "olleh"

}

function codingFun(str) {
	var rubyFun = true;
	var javaFun = true;

	if (rubyFun && javaFun) {
		console.log("I love learning " + reverseString);
	}	else if (rubyFun && !javaFun) {
		console.log("I miss Ruby! I don't like " + reverseString);
	} else {
		console.log("Get me out of DBC!")
	}

}

// DRIVER CODE

var reverseString = reverseString("JavaScript");

console.log("reverse_string has a value of " + reverseString);

var codingFun = codingFun(reverseString);
