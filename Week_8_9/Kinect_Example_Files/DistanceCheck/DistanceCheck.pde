import SimpleOpenNI.*;
SimpleOpenNI kinect;

void setup(){
  size(640, 480);
  kinect = new SimpleOpenNI(this);
  kinect.enableDepth();
}

void draw(){
  kinect.update();
  PImage depthImage = kinect.depthImage();
  image(depthImage, 0, 0);
}

void mousePressed(){
  int[] depthValues = kinect.depthMap();
  int clickedPosition = mouseX + (mouseY * 640);
  int clickedDepth = depthValues[clickedPosition];
  
  println("Depth: "+clickedDepth);
  println("x: "+mouseX);
  println("y: "+mouseY);
}


