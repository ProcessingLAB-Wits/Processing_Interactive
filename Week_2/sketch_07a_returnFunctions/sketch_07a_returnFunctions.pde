// Example by Tegan Bristow 2015
// Basic function
void setup() {
  size(400, 100);
  background(204);
  noStroke();
}


void draw() {
  // run the function a couple of times
float c = randTwoPlus(10,12);
  println("C:"+c);

}

// we can also use functions to perform a very specific calculation that we use often,
float randTwoPlus(float n1, float n2){
  float a = random(n1);
  float b = a + n2;
  return b;
}