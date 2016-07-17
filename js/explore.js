// PSEUDOCODE
// take the string as an argument
// initialize a new empty string
// starting with an index of the (string's length - 1)
// iterate backwards through the string while the index is >= 0
// add each char to the new empty string
// decrement the index each time
// return the new reversed string



// TESTING STUFF
// var string = 'blah';
// console.log(string[0]);
// string += "hh";
// console.log(string);
// console.log(string.length);

function reverse(string) {
	reversedString = "";
	for (var i = string.length - 1; i >= 0; i--) {
		reversedString += string[i];
	}
	return reversedString;
}

console.log(reverse("hello"));

var newString = reverse("blahhh");

if (1 == 1) {
	console.log(newString);
}