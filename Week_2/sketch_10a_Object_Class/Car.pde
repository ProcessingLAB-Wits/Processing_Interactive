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
  Car(float tempX, float tempY, float tempW) { 
    c = color(175);
    xpos = tempX;
    ypos = tempY;
    xspeed = 1;
    cWidth = tempW;
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