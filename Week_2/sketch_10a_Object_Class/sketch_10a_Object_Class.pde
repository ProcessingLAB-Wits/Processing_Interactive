// Learning Processing Example 8-1: A Car class and a Car object

// 1. We will move this to a new tab.
// 2. Add constructing variables.
// 3. Add the speed variable to the move function
// 4. After looking at arrays, lets make an array of cars

Car myCar; // Declare car object as a globle variable.
Car newCar;

void setup() {
  size(480, 270);
  // Initialize car object in setup() by calling constructor.
  myCar = new Car(10, 100, 50);
  newCar = new Car(100, 200, 100);
  //myCar.xpos = 20;
  //myCar.ypos = 100;
}

void draw() {
  background(255);
  // Operate Car object in draw() by calling 
  // object methods using the dot syntax.
  myCar.move(); 
  myCar.display();
  //newCar.move(); 
  newCar.display();
}