function Elephant(name, height, tricks) {
  this.name = name;
  this.height = height;
  this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
  console.log(this.name + " the elephant goes 'phrRRRRRRRRRRR!!!!!!!'");
};

Elephant.prototype.grow = function() {
  this.height += 12;
};

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function() {
  var randomIndex = Math.floor(Math.random() * this.tricks.length);
  var randomTrick = this.tricks[randomIndex];
  console.log(this.name + " is " + randomTrick + "!");
};

// Creating an elephant
var elephant1 = new Elephant("Dumbo", 120, ["painting a picture", "dancing"]);

// Testing the functions
elephant1.trumpet(); // Output: Dumbo the elephant goes 'phrRRRRRRRRRRR!!!!!!!'
console.log("Initial height:", elephant1.height); // Output: Initial height: 120
elephant1.grow();
console.log("Height after growth:", elephant1.height); // Output: Height after growth: 132
elephant1.addTrick("singing");
elephant1.play(); // Output: Dumbo is singing!