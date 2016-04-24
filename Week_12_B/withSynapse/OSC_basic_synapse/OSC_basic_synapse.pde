/**
 * oscP5sendreceive by andreas schlegel
 * example shows how to send and receive osc messages.
 * oscP5 website at http://www.sojamo.de/oscP5
 */
 
import oscP5.*;
import netP5.*;
  
OscP5 oscP5;
NetAddress myRemoteLocation;

void setup() {
  size(400,400);
  frameRate(25);
  /* start oscP5, listening for incoming messages at port 12000 */
  oscP5 = new OscP5(this,12347);
  myRemoteLocation = new NetAddress("127.0.0.1",12345);
}


void draw() {
  background(0);  
}

/* incoming osc message are forwarded to the oscEvent method. */
void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
  //print("### received an osc message.");
  print("addrpattern: "+theOscMessage.addrPattern());

 // if(theOscMessage.checkAddrPattern("/torso")==true) {
      //println("msg: "+
    /* check if the typetag is the right one. */
    //if(theOscMessage.checkTypetag("ifs")) {
      //println("see's typetag");
      /* parse theOscMessage and extract the values from the osc message arguments. */
     // String firstValue = theOscMessage.get(0).stringValue();  
      //String secondValue = theOscMessage.get(1).stringValue();
      //String thirdValue = theOscMessage.get(2).stringValue();
      //print("### received an osc message /test with typetag ifs.");
      //println(" values: "+firstValue);
      //return;
    //}  
  //} 
  //println("### received an osc message. with address pattern "+theOscMessage.addrPattern());
}