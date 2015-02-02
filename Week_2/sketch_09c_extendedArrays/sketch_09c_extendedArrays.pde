/*
 * by Indae Hwang and Jon McCormack, extended by Tegan Bristow 
 *
 * This program demonstrates the use of arrays 
 * but expands on sketch_09a - using the array value to track it's position
 * thereby allowing for relational changes to be made.
 * Work with these 'distance' values to not only stop and start an ellipse when clicked on
 * but get creatve in setting up your own paramaters changed by distance
 */

int     num;    // the number of items in the array (# of circles)
float circleSize = 20; //ellipse size
float[] x;      // x-position of each circle (fixed)
float[] y;      // y-position of each circle (fixed)
float[] speed;  // speed of each circle
float[] phase;  // phase of each circle
//Boolean[] stopped;  // it use a boolean array to turn stop and start 

// for ellipse fills - to change based on distance
float red = 120; 
float green = 120;
float blue = 120;

// for rotating background
float bgRed = 120;
float bgGreen = 120;
float bgBlue = 120;

void setup() {
  size(500, 500);
  frameRate(20);
  noStroke();
  
  num = 8;
  
  // allocate space for each array
  y = new float[num];
  x = new float[num];
  speed = new float[num];
  phase = new float[num]; 

  // calculate the gap in y based on the number of circles
  float gap = circleSize/2+(height / (num + 1));

  //setup an initial value for each item in the array
  for (int i=0; i<num; i++) {
    y[i] = gap * (i + 1);      // y is constant for each so can be calculated once
    speed[i] = random(5);
    phase[i] = random(TWO_PI);
  }
}

void draw() {
  background(200, bgGreen, bgBlue);

  for (int i=0; i<num; i++) {
    // color based on distance from mouse
    red = map(dist(mouseX, mouseY, x[i], y[i]), 0, width, 40, 100);
    green = map(dist(mouseX, mouseY, x[i], y[i]), 0, width, 40, 100);
    blue = map(dist(mouseX, mouseY, x[i], y[i]), 0, width, 40, 255);
    // calculate the x-position of each ball based on the speed, phase and current frame
      x[i] = width/2 + sin(radians(frameCount*speed[i] ) + phase[i])* 220;
      // apply the new distance based fill color
      fill(red, green, blue);
      ellipse(x[i], y[i], 40, 40);
  }
  // background color
  bgRed = map(mouseX, 0, width, 0, 100);
  bgGreen = map(mouseY, 0, height, 0, 100);
  bgBlue = map(mouseX+mouseY, 0, width+height, 100, 0);
  
}

void mouseClicked() { // tip: use an if statement, distance() and circle size to test if the mouse is in range
  
}

