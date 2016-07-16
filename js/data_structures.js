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

var newCar = Car.new("Soren's car", 10, false)

for (var key in newCar) {
	if (newCar.hasOwnProperty(key)) {
		console.log(key + " -> " + newCar[key]);
	}
}