/* 
Looking at Alpha and oppacity in RBG & A
Futher addressing background()
Looking at the different options with fill
*/

void setup(){
size(400,400);
background(0);
noStroke();
}

void draw(){
// No fourth argument means 100% opacity.
fill(0,0,255);
rect(0,0,200,400);

// 255 means 100% opacity.
fill(255,0,0,255);
rect(0,50,400,40);

// 75% opacity.
fill(255,0,0,191);
rect(0,100,400,40);

// 55% opacity.
fill(255,0,0,127);
rect(0,150,400,40);

// 25% opacity.
fill(255,0,0,63);
rect(0,200,400,40);
}


