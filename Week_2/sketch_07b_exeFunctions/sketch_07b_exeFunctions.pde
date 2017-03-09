// Example by Tegan Bristow 2015
// Finish Drawing the Car
// Then we will make a car function of our own

 int carW = 200;
  int carH = 50;
  int carX = 100;
  int carY = 100;
  int carSpeed = 2;

void setup() {
  size(400, 200);
  background(204);
  noStroke();
}

void draw() {
  background(127);
  fill(255);
  //body
  rect(carX,carY, carW, carH);
  //wheels
  fill(0);
  ellipse(carX + carW*0.2, carY+carH, carW/4, carW/4);
  ellipse(carX + carW*0.8, carY+carH, carW/4, carW/4);
  carX = carX + carSpeed;
  if (carX > width || carX < 0-carW){
    carSpeed = carSpeed*-1;
  }
}