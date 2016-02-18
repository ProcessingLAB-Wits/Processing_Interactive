// Learning Processing Example 8-1: A Car class and a Car object

// 1. We will move this to a new tab.
// 2. Add constructing variables.
// 3. Add the speed variable to the move function
// 4. After looking at arrays, lets make an array of cars

Car myCar; // Declare car object as a globle variable.

void setup() {
  size(480, 270);
  // Initialize car object in setup() by calling constructor.
  myCar = new Car();
}

void draw() {
  background(255);
  // Operate Car object in draw() by calling 
  // object methods using the dot syntax.
  myCar.move(); 
  myCar.display();
}

// Define a class outside of setup and draw.
class Car { 
  // Variables.
  color c; 
  float xpos;
  float ypos;
  float xspeed;
  float cWidth; // added
  float cHeight; //added

  // A constructor.
  Car() { 
    c = color(175);
    xpos = width/2;
    ypos = height/2;
    xspeed = 1;
    cWidth = 60;
    cHeight = cWidth/2;
  }

  // Function.
  void display() { 
    // The car is just a square
    rectMode(CENTER);
    stroke(0);
    fill(c);
    rect(xpos, ypos, cWidth, cHeight);
    ellipse(xpos+cWidth*0.3, ypos+cHeight/2, cHeight/2, cHeight/2); // added
    ellipse(xpos-cWidth*0.3, ypos+cHeight/2, cHeight/2, cHeight/2); // added
  }

  // Function.  
  void move() { 
    xpos += xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}