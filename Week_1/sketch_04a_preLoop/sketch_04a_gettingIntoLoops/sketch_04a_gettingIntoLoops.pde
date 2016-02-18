/*
 * This program draws 3 rows of 3 squares in the display window
 * Each row is coloured red, green, and blue.
 * Each rectangle is draw individually, meaning there are 9 rect calls.
 * 
 */

void setup() {
  size(600, 600);
  background(180);
  //noLoop();  // only execute the draw function once
  rectMode(CENTER); // set the rectangle drawing mode to specify the rectangle's centre
  noStroke();
}


void draw() {

  // row 1: red
  fill(255, 0, 0);
  int rX = 150;
  int rS = 150;
  for(int i = 0; i <=2; i++){
  rect(rX, 150, 100, 100);
  rX += rS;
  }

  // row 2: green
  fill(0, 255, 0);
  rX = 150;
  for(int i = 0; i <=2; i++){
  rect(rX, 150, 100, 100);
  rX += rS;
  }

  // row 3: blue
  fill(0, 0, 255);
  rX = 150;
  for(int i = 0; i <=2; i++){
  rect(rX, 150, 100, 100);
  rX += rS;
  }
  
} // end draw