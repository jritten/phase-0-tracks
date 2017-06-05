// 7.3 Algorithm Practice

//

// Release 0: Find the Longest Phrase

// PSEUDOCODE:
// write a function that takes words or phrases
// the function splits the words or phrases into an array
// the function checks the length of each word or phrase
// the functions returns the longest word or phrase
// add driver code to test function

// BUSINESS LOGIC

function longestWord(array) {
//var array = ["long phrase","longest phrase","longer phrase"];
var length = 0;
var longest;
// var array = input.split(','');

	for (var i = 0; i < array.length; i++) {
		// console.log(array[i].length);
		if (array[i].length > length) {
			var length = array[i].length;
			longest = array[i];
		}
	}
	console.log(longest);
}

// DRIVER CODE

var longestWordtest = new longestWord(["long phrase","longest phrase","longer phrase"]);

// var input = prompt("Please, type a list of words or phrases.", "<input goes here>");
// var input = "this is a phrase, this is a longer phrase";

// Release 1: Find a Key-Value Match

// PSEUDOCODE:
// write a function that takes two objects
// the function checks the two objects for key, value pairs
// use a boolean to determine if each object has at least 
// one matching key, value pair, return true
// add driver code

function hashCheck(object1, object2) {
	// object1 = object.hasOwnProperty(key) && [key] = value
	// Object.keys(object1) == Object.keys(object2)
	for (var i in object1) {
		if (! object2.hasOwnProperty(i) || object1[i] !== object2[i]) {
			return false;
		}
	}
	return true;
}

// DRIVER CODE

var object1 = {'key': 'keyName', 'value': 10};
var object2 = {'key': 'keyName', 'value': 10};
var hashChecktest = new hashCheck(object1, object2);

// Release 2: Generate Random Test Data

// PSEUDOCODE:
// write a function that takes an integer for length
// the function builds an array of strings
// the function returns an array of strings of given length
// the function returns strings of randomly varying length
// letter min 1 max 10
// add driver code to repeat 10 times;
// generate an array 
// print the array
// feed the array to "longest word" function
// print the result

function randomData {
length = integer
wordArray = array.length


}

for (var i = 0; i < 10; i++) {
	
}