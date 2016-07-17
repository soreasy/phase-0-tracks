// PSUEDOCODE
//
// Release 0
// take array of words/phrases as argument
// initialize a var maxLength to 0 and a var longestString to an empty string
// loop through the strings in the passed array
	// if the length of any of them is greater than maxLength 
		// set maxLength to that string's length
		// and set longestString equal to that string
// return longestString
//
// Release 1
// take two objects as arguments
// initialize a var hasOverlap to false
// for each key in the first object
	// for each key in the second object
		// if first object key == second object key
			// if the corresponding values are equal
				// set hasOverlap to true
// return hasOverlap
//
// Release 2
// take an integer (length) as argument
// initialize an empty array randomWords
// do the following length times:
	// set randomLength = a random number [1,10]
	// initialize an empty string randomString
	// do the following randomLength times:
		// pick a random letter from the alphabet ('abc...xyz')
		// add it to randomString
	// add randomString to randomWords
// return randomWordsArray

function longestPhrase(stringArray) {
	var maxLength = 0;
	var longestString = "";
	for (var i = 0; i < stringArray.length; i++) {
		if (stringArray[i].length > maxLength) {
			maxLength = stringArray[i].length;
			longestString = stringArray[i];
		}
	}
	return longestString;
}

function doesOverlap(object1, object2) {
	var hasOverlap = false;
	for (var key1 in object1) {
		if (object1.hasOwnProperty(key1)) {
			for (var key2 in object2) {
				if (object2.hasOwnProperty(key2)) {
					if ((key1 == key2) && (object1[key1] == object2[key2])) {
						hasOverlap = true;
					}
				}
			}
		}
	}
	return hasOverlap;
}

function randomWordsArray(aryLength) {
	var randomWords = [];
	var alphabet = "abcdefghijklmnopqrstuvwxyz";
	for (var i = 0; i < aryLength; i++) {
		var randomLength = Math.floor(Math.random() * 10) + 1;
		//console.log("The random length of string " + i + " is " + randomLength)
		var randomString = "";
		for (var y = 0; y < randomLength; y++) {
			var randomLetterIndex = Math.floor(Math.random() * 26);
			randomString += alphabet[randomLetterIndex];
		}
		randomWords.push(randomString);
		//console.log(randomWords);
	}
	return randomWords;
}

// DRIVER CODE
// Release 0 driver code

var longest = longestPhrase(["bla", "blah", "blahh", "blahhhh"]);
console.log(longest);

console.log(longestPhrase(["1", "12", "123", "12341234"]));

var overlapExists = doesOverlap({name: "Steve", age: 54}, {name: "Tamir", age: 54});
console.log(overlapExists);

var overlapDoesntExist = doesOverlap({name: "Steve", age: 53}, {name: "Tamir", age: 54});
console.log(overlapDoesntExist);

//randomWordsArray(10);

for (var i = 0; i < 10; i++) {
	var randoAry = randomWordsArray(3);
	console.log(randoAry);
	console.log(longestPhrase(randoAry));
}




