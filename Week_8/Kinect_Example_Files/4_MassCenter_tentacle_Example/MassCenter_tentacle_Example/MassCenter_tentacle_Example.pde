import SimpleOpenNI.*;
SimpleOpenNI kinect;

//---------TENTACLE--------//
int nTentacles = 2;
Tentacle[] tentacles;
//Tentacle[] tentacles2;

int stw = 640;
int sth = 480;
float aFade = 255;
float nThick = 6;
float[] posX = {
  300, 0, 0, 0
};
float[] posY = {
  0, 0, 0, 0
};
float hPosX = 0;
float hPosY = sth;
Boolean thicker = false;
Boolean fadeOut = false;


void setup() {
  size(640, 480);
  smooth();
  noCursor();
  rectMode(CENTER);
  //---------KINECT------------//
  kinect = new SimpleOpenNI(this);
  kinect.enableDepth();
  kinect.enableUser(SimpleOpenNI.SKEL_PROFILE_NONE);
  //---------TENTACLE----------//
  tentacles = new Tentacle[nTentacles];
  //tentacles2 = new Tentacle[nTentacles];
  for (int i = 0; i < nTentacles; i++)
  {
    tentacles[i] = new Tentacle(0, sth, 10, 10, 50.0 + random(15.0)); 
    //tentacles2[i] = new Tentacle(0, sth, 10, 10, 50.0 + random(15.0));
  }
}

void draw() {
  kinect.update();
  //image(kinect.depthImage(), 0, 0);
  background(0);
  noStroke();
  if(fadeOut){
    if(aFade >= 0){
      aFade -= 4;
    }
  }
  noStroke();
  fill(aFade);
  rect(stw/2, sth/2, stw, sth);
  stroke(0);
  //strokeWeight(80);
  //line(680,175, 605,-10);
  IntVector userList = new IntVector();
  kinect.getUsers(userList);
  //println(userList.size());

  for (int i=0; i<userList.size(); i++) {
    int userId = userList.get(i);
    PVector position = new PVector();
    kinect.getCoM(userId, position);
    kinect.convertRealWorldToProjective(position, position);
  if (position.z == 0.0) {
    //posX[i] = stw;
      //posY[i] = sth;
    }
    else {
      hPosX = position.x;
      hPosY = position.y;
    }
    //println("x:"+position.x+" y:"+position.y+" z:"+position.z);
    fill(255, 0, 0);
    text(userId, position.x, position.y);
  }
  //---------TENTACLE--------------/ 
  if(thicker){
    if(nThick < 15){
      nThick += 0.04;
    }
  }
  for (int j = 0; j < nTentacles; j++) {
    tentacles[j].update(hPosX, 440, nThick);
    //tentacles2[j].update(mouseX, 400, nThick);
  }
}

void keyPressed() {
  if (key == 'p') {
    for (int i = 0; i < nTentacles; i++) {
      tentacles[i].hop = !tentacles[i].hop;
      //tentacles2[i].hop = !tentacles2[i].hop;
    }
  }

  if (key == 't') {
    thicker = true;
  }
  if(key == 'o'){
    fadeOut = true;
  }
}

