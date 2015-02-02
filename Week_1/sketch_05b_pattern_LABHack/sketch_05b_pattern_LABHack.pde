/*
 * This program extends the last, but uses the exact same variables.
 * With the addition of a shifting RGB color range.
 * 
 */
int x = 100;
int y = 25;
int mySize = 50;
int repeats = 0;
int myFill = 0;

void setup() {
  size(500, 500);
  smooth();
  background(255);
}

void draw() {
  background(255);
  stroke(0);
  strokeWeight(3);
  ellipseMode(CENTER);
  
  repeats = width/mySize+1;

  for (int i = 0; i < repeats; i++) {
    for (int j = 0; j < repeats; j++) {
      
     fill(myFill, 200, 220);
     ellipse(mySize/2+x, 0+y, mySize, mySize);
     
     fill(255-myFill, 200, myFill);
     ellipse(0+x, mySize/2+y, mySize, mySize);
     
     fill(255);
     ellipse(0+x, mySize/2+y, mySize*0.6, mySize*0.6);
      x = x + mySize;
    }
 
    y = y + mySize;
    myFill = myFill + 24;
    x = 0;
  }
  y = 0;
  myFill = 0;
}

