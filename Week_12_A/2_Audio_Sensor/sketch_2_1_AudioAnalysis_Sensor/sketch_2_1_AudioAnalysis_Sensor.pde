import processing.sound.*;
Amplitude amp;
AudioIn in;

void setup() {
  size(320, 240);
  background(255);
    
  // Create an Input stream which is routed into the Amplitude analyzer
  amp = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);
}      

void draw() {
  background(255);
  //println(amp.analyze());
  float r = amp.analyze();
  textAlign(CENTER);
  fill(0,100);
  text(r, 20, 20);
  //ellipse(width/2, height/2, r, r);
  if(r > 0.1){
    fill(255,0,0);
    text("trigger event", width/2, height/2);
  }
}