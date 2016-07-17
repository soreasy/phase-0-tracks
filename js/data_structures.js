var colors = ["blue", "red", "yellow", "green"];
var names = ["Ed", "Wanda", "Tyrone", "Macy"];

colors.push("magenta");
names.push("Jess");


var horsey_names_colors_object = {};

for (var i = 0; i < colors.length; i++) {
	horsey_names_colors_object[names[i]] = colors[i];
}

console.log(horsey_names_colors_object);

function Car(name, age, isBroken) {
	this.name = name;
	this.age = age;
	this.isBroken = isBroken;

	this.turnOn = function() { console.log("The engine is on!"); };

}

var oldCar = new Car("Soren's car", 10, true)
var newCar = new Car("Tati's car", 1, false)

console.log("Name: " + oldCar.name + ". Age: " + oldCar.age + ".");
oldCar.turnOn();

console.log("Name: " + newCar.name + ". Age: " + newCar.age + ". " + "Is the car broken? " + newCar.isBroken);


for (var key in newCar) {
	if (newCar.hasOwnProperty(key)) {
		console.log(key + " -> " + newCar[key]);
	}
}