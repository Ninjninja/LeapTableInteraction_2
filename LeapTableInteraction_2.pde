
//import de.voidplus.leapmotion.*;
import hivis.common.*;
import hivis.data.*;
import hivis.data.reader.*;
import hivis.data.view.*;
import hivis.example.*;


float INTERACTION_SPACE_WIDTH = 200; // left-right from user
float INTERACTION_SPACE_DEPTH = 150; // away-and-toward user
float FINGER_DOT = 30;

//LeapMotion leap;

color // set more colors using Menu >  Tools > Color Selector
   black=#000000, grey=#5F5F5F, white=#FFFFFF, 
   red=#FF0000, green=#00FF01, blue=#0300FF,  
   yellow=#FEFF00, cyan=#00FDFF, magenta=#FF00FB, 
   orange=#FCA41F, dgreen=#026F0A, brown=#AF6E0B,
   purple=#b170df, neonOrange=#FF9933;
   
boolean filming=false;  // when true frames are captured in FRAMES for a movie

// flags used to control when a frame is captured and which picture format is used 
boolean recordingPDF=false; // most compact and great, but does not always work
boolean snapJPG=false;
boolean snapTIF=false;   
boolean showOrigin=false;
boolean showTestJoint = false;

float globalX = 39;
float globalY = -175;
float globalZ = -10;
float[] globalrX = {0.87102346, -0.17956701,  0.45724592};
float[] globalrY = { 0.45724592,  0.63659855, -0.62102211};
float[] globalrZ = {-0.17956701,  0.74999865,  0.63659855};
float cameraMovement = 0.1;
float globalScale = 1;

String PicturesFileName = "LeapMotionHands";
int frameCounter=0;
int pictureCounterPDF=0, pictureCounterJPG=0, pictureCounterTIF=0; 

Hands hands = new Hands();

void setup() {
  
  size(1024, 1024, P3D);
  //leap = new LeapMotion(this);
  textAlign(CENTER);
  //ambientLight(100, 0, 100);
  //directionalLight(255,0,255, 0, 1, 1);
  setCamera(globalX, globalY, globalZ, globalrX, globalrY, globalrZ);
   //<>//
}

void draw() {
  background(green);
  noStroke();
  ambientLight(150, 150, 150);
  directionalLight(255,255,255, 0, 5, -1);
  ambient(150, 150, 150);
  setCamera(globalX, globalY, globalZ, globalrX, globalrY, globalrZ);
  // FPS
  int fps = 30;
  //fill(#00E310);
  //text(fps + " fps", 400, 280);

  for (int i = 0; i < 1; i = i+1) { //<>//
    
    PVector thumbTip = hands.thumbTip;
    PVector thumbDip = hands.thumbDip;
    PVector thumbMcp = hands.thumbMip;
    PVector thumbPip = hands.thumbPip;

    PVector indexTip = hands.indexTip;
    PVector indexDip = hands.indexDip;
    PVector indexPip = hands.indexPip;
    PVector indexMcp = hands.indexMip;
    
    PVector ringTip = hands.ringTip;
    PVector ringDip = hands.ringDip;
    PVector ringPip = hands.ringPip;
    PVector ringMcp = hands.ringMip;
    
    PVector middleTip = hands.middleTip;
    PVector middleDip = hands.middleDip;
    PVector middlePip = hands.middlePip;
    PVector middleMcp = hands.middleMip;
                        
    PVector pinkyTip = hands.littleTip;
    PVector pinkyDip = hands.littleDip;
    PVector pinkyPip = hands.littlePip;
    PVector pinkyMcp = hands.littleMip;
    PVector armWrist = hands.armWrist;
    //PVector armCenter = hands.getArm().getRawPosition();
    PVector armElbow = hands.armElbow;
    //PVector thumbTip = hand.getThumb().getRawPositionOfJointTip();
    //PVector thumbDip = hand.getThumb().getRawPositionOfJointDip();
    //PVector thumbMcp = hand.getThumb().getRawPositionOfJointMcp();
    //PVector thumbPip = hand.getThumb().getRawPositionOfJointPip();

    //PVector indexTip = hand.getIndexFinger().getRawPositionOfJointTip();
    //PVector indexDip = hand.getIndexFinger().getRawPositionOfJointDip();
    //PVector indexPip = hand.getIndexFinger().getRawPositionOfJointPip();
    //PVector indexMcp = hand.getIndexFinger().getRawPositionOfJointMcp();
    
    //PVector ringTip = hand.getRingFinger().getRawPositionOfJointTip();
    //PVector ringDip = hand.getRingFinger().getRawPositionOfJointDip();
    //PVector ringPip = hand.getRingFinger().getRawPositionOfJointPip();
    //PVector ringMcp = hand.getRingFinger().getRawPositionOfJointMcp();
    
    //PVector middleTip = hand.getMiddleFinger().getRawPositionOfJointTip();
    //PVector middleDip = hand.getMiddleFinger().getRawPositionOfJointDip();
    //PVector middlePip = hand.getMiddleFinger().getRawPositionOfJointPip();
    //PVector middleMcp = hand.getMiddleFinger().getRawPositionOfJointMcp();
                        
    //PVector pinkyTip = hand.getPinkyFinger().getRawPositionOfJointTip();
    //PVector pinkyDip = hand.getPinkyFinger().getRawPositionOfJointDip();
    //PVector pinkyPip = hand.getPinkyFinger().getRawPositionOfJointPip();
    //PVector pinkyMcp = hand.getPinkyFinger().getRawPositionOfJointMcp();
    
    //PVector armWrist = hand.getArm().getWristRawPosition();
    ////PVector armCenter = hand.getArm().getRawPosition();
    //PVector armElbow = hand.getArm().getElbowRawPosition();

    handleFinger(thumbTip, "thb", 4);
    handleFinger(thumbDip, "thb", 5);
    handleFinger(thumbMcp, "thb", 8);
    handleFinger(thumbPip, "thb", 6);
    connectJoints(thumbTip, thumbDip, 4, 5, orange);
    connectJoints(thumbDip, thumbPip, 5, 6, white);
    connectJoints(thumbPip, thumbMcp, 6, 8, magenta);
    
    handleFinger(indexTip, "idx", 4);
    handleFinger(indexDip, "idx", 5);
    handleFinger(indexPip, "idx", 6);
    handleFinger(indexMcp, "idx", 8);
    connectJoints(indexTip, indexDip, 4, 5, yellow);
    connectJoints(indexDip, indexPip, 5, 6, brown);
    connectJoints(indexPip, indexMcp, 6, 8, blue);
    connectJoints(indexMcp, middleMcp,8, 8, yellow);
    connectJoints(indexMcp, thumbMcp, 8, 8, yellow);
    
    handleFinger(middleTip, "mdl", 4);
    handleFinger(middleDip, "mdl", 5);
    handleFinger(middlePip, "mdl", 6);
    handleFinger(middleMcp, "mdl", 8);
    connectJoints(middleTip, middleDip, 4, 5, orange);
    connectJoints(middleDip, middlePip, 5, 6, magenta);
    connectJoints(middlePip, middleMcp, 6, 8, cyan);
    connectJoints(middleMcp, ringMcp, 8, 8, yellow);
    
    handleFinger(ringTip, "rng", 4);
    handleFinger(ringDip, "rng", 5);
    handleFinger(ringPip, "rng", 6);
    handleFinger(ringMcp, "rng", 8);
    connectJoints(ringTip, ringDip, 4, 5, cyan);
    connectJoints(ringDip, ringPip, 5, 6, yellow);
    connectJoints(ringPip, ringMcp, 6, 8, brown);
    connectJoints(ringMcp, pinkyMcp,8, 8, yellow);
    
    handleFinger(pinkyTip, "pky", 4);
    handleFinger(pinkyDip, "pky", 5);
    handleFinger(pinkyPip, "pky", 6);
    handleFinger(pinkyMcp, "pky", 8);
    connectJoints(pinkyTip, pinkyDip, 4, 5, white);
    connectJoints(pinkyDip, pinkyPip, 5, 6, blue);
    connectJoints(pinkyPip, pinkyMcp, 6, 8, red);
    connectJoints(pinkyMcp, armWrist, 8, 8, yellow);
    
    handleFinger(armWrist, "wrist", 8);
    //handleFinger(armCenter, "center");
    handleFinger(armElbow, "elbow", 8);
    connectJoints(thumbMcp, armWrist, 8, 8, yellow);
    //connectJoints(armWrist, armCenter);
    connectJoints(armElbow, armWrist, 8, 8, red);
    connectJoints(armElbow, thumbMcp, 8, 8, orange);
    
    drawPalm(armWrist, thumbMcp, indexMcp, middleMcp, ringMcp, pinkyMcp, 5, blue);
    
    //hand.drawFingers(4);
  }
    
    // snap pictures or movie frames
  if(recordingPDF) endRecordingPDF();  // end saving a .pdf file with the image of the canvas
  if(snapTIF) snapPictureToTIF();   
  if(snapJPG) snapPictureToJPG();   
  if(filming) snapFrameToTIF(); // saves image on canvas as movie frame 
  
  if(showOrigin) {
  pushMatrix();
  translate(0, 0, 0);
  sphere(1);
  popMatrix();
  pushMatrix();
  translate(100, 0, 0);
  sphere(1);
  popMatrix();
  pushMatrix();
  translate(0, 100, 0);
  sphere(1);
  popMatrix();
  pushMatrix();
  translate(0, 0, 100);
  sphere(1);
  popMatrix();
  }
}


//Camera currently spawns at the origin and looks down the z axis.
//by default, the hand does not appear on screen.
//the hand's x,y,z should be changed. there's gui to do that and some presets
void setCamera(float x, float y, float z, float[] rX, float[] rY, float[] rZ) {
  camera(x, y, z, rZ[0] + x, rZ[1] + y, rZ[2] + z, rY[0], rY[1], rY[2]);
}      

void connectJoints(PVector pos1, PVector pos2, float x, float y, color c) {
  ambient(c);
  caplet(pos1, x, pos2, y);
}

void drawPalm(PVector p1, PVector p2, PVector p3, PVector p4, PVector p5, PVector p6, float d, color c) {
  ambient(c);
  float r = d / 2.0;
  beginShape();
  v(p1);
  v(p2);
  v(p3);
  v(p4);
  v(p5);
  v(p6);
  endShape(CLOSE);
}

void handleFinger(PVector pos, String id, float x) {

  // map finger tip position to 2D surface
  //float x = map(pos.x, -INTERACTION_SPACE_WIDTH,
  //INTERACTION_SPACE_WIDTH, 0, width);
  //float y = map(pos.z, -INTERACTION_SPACE_DEPTH,
  //INTERACTION_SPACE_DEPTH, 0, height);

  ambient(black);
  pushMatrix();
  scale(globalScale);
  translate(pos.x, -pos.y, pos.z);
  sphere(x);
  popMatrix();
  

  // ID
  //fill(0);
  //text(id, x, y + 5);
}
