/* What will we look at:
RGB vs HSB
Why or when would we want to use these?
*/

void setup() {  // use setup to set your screen properties and declare stuff once
  size(500, 500);
}

void draw() {  // a looping space that runs your program
  
  strokeWeight(10); // new "settings" functions - why not Attributes?
  background(0,0,0);
  //RGB Color
  
  // shifting degree's and percentages of brightness and contrast
  colorMode(HSB,360,100,100);
  fill(360,99,0); 
  stroke(360,99,99);
  ellipse(250, 250, 250, 250);
  
  //shifting only on the 8 bit ranges of 0 to 255
  colorMode(RGB);
  fill(0,0,0);
  stroke(255,0,0);
  ellipse(250, 250, 150, 150);
  
}


