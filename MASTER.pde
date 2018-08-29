int scene = 0;
boolean record = false;

import netP5.*;
import oscP5.*;

OscP5 Music;

//the intro walkers
iWalker[] introWalkers = new iWalker[30];

//randomWalkers
rWalker[] randomWalkers = new rWalker[150];

//jitterCube
float oneN[] = new float[3];
float twoN[] = new float[3]; 
float threeN[] = new float[3];
float fourN[] = new float[3];
float fiveN[] = new float[3];
float sixN[] = new float[3];
float sevenN[] = new float[3];
float eightN[] = new float[3];

//planets
import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;
int starNum = 1000;
Star[] stars = new Star[starNum];
Planet sun;
//PeasyCam cam;

//triRunner
float[] triXPos = new float[9];
float[] triYPos = new float[9];

TriRunner run;

//3d cubes
float cubeAngle;
// Cube count-lower/raise to test performance
int limit = 500;

// Array for all cubes
Cube[] cubes = new Cube[limit];

//VARIABLES FROM MAX
int kick, snare, piano, rodes, sax, winds, bone, vox;
int kickA, snareA, pianoA, rodesA, saxA, windsA, boneA, voxA;
int sceneSwitch;



void setup() {
  //DECLARE MAX 0OBJECT
  Music = new OscP5(this, 6003);

  //size(1920, 1080, P3D);
  fullScreen(P3D);
  background(0);
  frameRate(24);
  hint(DISABLE_DEPTH_TEST);
  colorMode(HSB, 360, 100, 100, 255);
  //setup introwalkers

  Music.plug(this, "kick", "/kick");
  Music.plug(this, "snare", "/snare");
  Music.plug(this, "piano", "/piano");
  Music.plug(this, "rodes", "/rodes");
  Music.plug(this, "sax", "/sax");
  Music.plug(this, "winds", "/winds");
  Music.plug(this, "bone", "/bone");
  Music.plug(this, "vox", "/vox");

  Music.plug(this, "kickAmplitude", "/kickamp");
  Music.plug(this, "snareAmplitude", "/snareamp");
  Music.plug(this, "pianoAmplitude", "/pianoamp");
  Music.plug(this, "rodesAmplitude", "/rodesamp");
  Music.plug(this, "saxAmplitude", "/saxamp");
  Music.plug(this, "windsAmplitude", "/windsamp");
  Music.plug(this, "boneAmplitude", "/boneamp");
  Music.plug(this, "voxAmplitude", "/voxamp");

  Music.plug(this, "footSwitch", "/footswitch");


  for ( int i = 0; i < introWalkers.length; i++) {
    introWalkers[i] = new iWalker(1, 0.1, 0.1, 0.1);
    introWalkers[i].isetup(-100, -100, 0);
  }
  //setup randomwalkers
  for (int i = 0; i < randomWalkers.length; i++) {
    randomWalkers[i] = new rWalker(random(0, 1), random(0, 1), random(0, 1), random(0, 1));
  }
  //setup grid_terrain_flat
  for (int y = 0; y < dataPoints; y++) { //maps z to each "x and y" point of the grid array
    for (int x = 0; x < dataPoints; x++) {
      z[x][y] = (probabilityDistZ(distPower, randomizedElev)+probabilityDistZ(distPower, randomizedElev)+probabilityDistZ(6*distPower, 6*randomizedElev))/3; //generates randomized elevations, consists of an average of two relatively smooth layers and one more extreme-value layer
    }
  }
  for (int i = 0; i < phasesNum; i++) { //initializes fiber phases
    phases[i] = 255/phasesNum*i;
  }
  for (int i = 0; i < fibers; i++) {  //initializes fibers
    if (!flying) {
      fiberX[i] = random(-width/2, width/2);
      fiberY[i] = random(-height/2, height/4);
      fiberZ[i] = random(-height, 0);
    } else {
      fiberX[i] = random(-width*2, width*2);
      fiberY[i] = random(-height, height/4);
      fiberZ[i] = random(-height*speed/4, 0);
    }
    moveX[i] = random(-driftMax, driftMax);
    moveY[i] = random(-driftMax, driftMax);
    moveY[i] = random(-driftMax, driftMax);

    fiberSize[i] = sq(random(sizeMin, sizeMax));

    counter[i] = i;
    if (i%2 == 0) {
      counterDir[i] = 1;
    } else {
      counterDir[i] = -1;
    }
  }
  for (int m = 0; m < mountains; m++) {
    for (int i = 0; i < mountainPoints; i++) {  //initializes mountain x points

      mountainXYs[m][0][i] = random(0, width/mountainPoints*4) + mountainX[m];
      mountainX[m] = mountainXYs[m][0][i];

      mountainXYs[m][1][i] = (noise(mountainNoise) * (height/8))-(height/24)*(m+1);
      mountainNoise = mountainNoise + 4;
    }
  }//end grid_terrain_flat

  //gradients
  TL = loadImage("TL.png");
  TR = loadImage("TR.png");
  BL = loadImage("BL.png");
  BR = loadImage("BR.png");
  SIDES = loadImage("SIDES.png");

  //4d spin
  widthMax = width/4;
  widthMin = width/32;
  rRange = widthMax-widthMin;
  topBuffer = height/5;
  p = new Particle[int(height-topBuffer)];
  xShift = new float[p.length]; //[noise value]
  xShift2 = new float[p.length]; //[noise value]
  radialOffset = new float[p.length]; //[offset degree]
  speedMod = new float[p.length]; //speed varience of each slice
  baseX = new float[p.length]; //moves the base of the tornado

  for (int i = 0; i < p.length; i++) {
    p[i] = new Particle(i+topBuffer, rRange-(rRange/p.length)*i); //calls contructor _ how high, how wide/how many

    radialOffset[i] = random(0, 360);
    speedMod[i] = random(-speedVarienceRange, speedVarienceRange);
    baseX[i] = -width/2;
  }

  //planets
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  //  cam = new PeasyCam(this, 500);
  sun = new Planet(50, 0, 1);
  sun.spawnMoon(5);

  //triRunner
  run = new TriRunner();

  //3d cubes
  for (int i = 0; i < cubes.length; i++) {
    cubes[i] = new Cube(int(random(-10, 10)), int(random(-10, 10)), 
      int(random(-10, 10)), int(random(-140, 140)), 
      int(random(-140, 140)), int(random(-140, 140)));
  }

  //gridTerrain
  for (int y = 0; y < dataPoints2; y++) { //maps z to each "x and y" point of the grid array
    for (int x = 0; x < dataPoints2; x++) {
      z2[x][y] = (probabilityDistZ2(distPower2, randomizedElev2)+probabilityDistZ2(distPower2, randomizedElev2)+probabilityDistZ2(6*distPower2, 6*randomizedElev2))/3; //generates randomized elevations, consists of an average of two relatively smooth layers and one more extreme-value layer
    }
  }
  for (int i = 0; i < phasesNum2; i++) { //initializes fiber phases
    phases2[i] = 255/phasesNum2*i;
  }
  for (int i = 0; i < fibers2; i++) {  //initializes fibers
    if (!flying2) {
      fiberX2[i] = random(-width/2, width/2);
      fiberY2[i] = random(-height/2, height/4);
      fiberZ2[i] = random(-height, 0);
    } else {
      fiberX2[i] = random(-width*2, width*2);
      fiberY2[i] = random(-height, height/4);
      fiberZ2[i] = random(-height*speed2/4, 0);
    }
    moveX2[i] = random(-driftMax2, driftMax2);
    moveY2[i] = random(-driftMax2, driftMax2);
    moveY2[i] = random(-driftMax2, driftMax2);

    fiberSize2[i] = sq(random(sizeMin2, sizeMax2));

    counter2[i] = i;
    if (i%2 == 0) {
      counterDir2[i] = 1;
    } else {
      counterDir2[i] = -1;
    }
  }
  for (int m = 0; m < mountains2; m++) {
    for (int i = 0; i < mountainPoints2; i++) {  //initializes mountain x points

      mountainXYs2[m][0][i] = random(0, width/mountainPoints2*4) + mountainX2[m];
      mountainX2[m] = mountainXYs2[m][0][i];

      mountainXYs2[m][1][i] = (noise(mountainNoise2) * (height/8))-(height/24)*(m+1);
      mountainNoise2 = mountainNoise2 + 4;
    }
  }

  //fourDSpin_osc
  widthMax1 = width/4;
  widthMin1 = width/32;
  rRange1 = widthMax1-widthMin1;
  topBuffer1 = height/5;
  p1 = new Particle1[int(height-topBuffer1)];
  xShift1 = new float[p1.length]; //[noise value]
  xShift21 = new float[p1.length]; //[noise value]
  radialOffset1 = new float[p1.length]; //[offset degree]
  speedMod1 = new float[p1.length]; //speed varience of each slice
  baseX1 = new float[p1.length]; //moves the base of the tornado


  for (int i = 0; i < p1.length; i++) {
    p1[i] = new Particle1(i+topBuffer1, rRange1-(rRange1/p1.length)*i); //calls contructor _ how high, how wide/how many

    radialOffset1[i] = random(0, 360);
    speedMod1[i] = random(-speedVarienceRange1, speedVarienceRange1);
    baseX1[i] = -width/2;
  }

  //fourDSlowSpin
  widthMax2 = width/4;
  widthMin2 = width/32;
  rRange2 = widthMax2-widthMin2;
  topBuffer2 = height/5;
  p2 = new Particle2[int(height-topBuffer2)];
  xShift12 = new float[p2.length]; //[noise value]
  xShift22 = new float[p2.length]; //[noise value]
  radialOffset2 = new float[p2.length]; //[offset degree]
  speedMod2 = new float[p2.length]; //speed varience of each slice
  baseX2 = new float[p2.length]; //moves the base of the tornado


  for (int i = 0; i < p2.length; i++) {
    p2[i] = new Particle2(i+topBuffer2, rRange2-(rRange2/p2.length)*i); //calls contructor _ how high, how wide/how many

    radialOffset2[i] = random(0, 360);
    speedMod2[i] = random(-speedVarienceRange2, speedVarienceRange2);
    baseX2[i] = -width/2;

    //tornado
    widthMax3 = width/4;
    widthMin3 = width/32;
    rRange3 = widthMax3-widthMin3;
    topBuffer3 = height/5;
    p3 = new Particle3[int(height-topBuffer3)];
    xShift3 = new float[p3.length]; //[noise value]
    xShift23 = new float[p3.length]; //[noise value]
    radialOffset3 = new float[p3.length]; //[offset degree]
    speedMod3 = new float[p3.length]; //speed varience of each slice
    baseX3 = new float[int(p3.length/chunkSizeSpeed3)]; //moves the base of the tornado


    for (int l = 0; l < p3.length; l++) {
      p3[l] = new Particle3(l+topBuffer3, rRange3-(rRange3/p3.length)*l); //calls contructor _ how high, how wide/how many

      radialOffset3[l] = random(0, 360);
      speedMod3[l] = random(-speedVarienceRange3, speedVarienceRange3);
    }

    for (int j = 0; j < baseX3.length; j++) {
      baseX3[j] = 0;
    }
  }
}//end setup


int end = 0;
color colorArray[] = {color(188, 166, 198), color(255, 170, 100), color(252, 232, 148), color(63, 118, 224), color(250, 91, 91), color(117, 176, 227)}; 
color song2[] = {color(230, 242, 68), color(252, 66, 191), color(107, 255, 75), color(255, 180, 15), color(255, 115, 64), color(67, 72, 0)}; 
color song3[] = {color(245, 40, 91), color(255, 9, 0), color(237, 75, 0), color(51, 49, 255), color(255, 200, 50), color(231, 63, 250)};
color song4[] = {color(161, 250, 252), color(126, 96, 144), color(255, 224, 100), color(252, 114, 0), color(255, 85, 85), color(246, 180, 255)};


//introWalkers
float xStart  ;
float currPitch;
float prevPitch;
int object = 0;
int interval;

//jitterCube
float v = 0.0;
float inc = 0.001;
int multiplier;
float varience;
float inputControl;
color lineCol;
color faceCol;

//fade
float fadeSpeed = 8;  //increase to speed up fade
float alpha = 0;
boolean fadeTrig = false;

//grid_terrain_flat
float gridAlpha;
int x;
int y;
int randomizedElev = 00;  //max value of elevation, set 0 for flat grid
int distPower = 5; //determines the distribution varience of elevation values
//float spacing = 1280/12;  //makes grid spacing relational to canvas width.  If canvas size is changed, insert new width in place of 1280
float spacing = 120; //changed spacing to constant to account for camera speed/array update at correct rate
int dataPoints = 120;
int fibers = 50;  //fibers must be <= phasesNum
int phasesNum = 50;  //affects phasing speed, but for the most even distribution keep number same as fibers
int sizeMin = 2;  //these ranges will be squared to achieve probability distribution
int sizeMax = 5;  //these ranges will be squared to achieve probability distribution
float driftMax = 4;
float speedVar = 5;
float driftControl;
float sizeVar = 5;
float sizeControl;
int speed = 3; //can be set to any value, but runs smoothest at numbers that are evenly divisable by the set "spacing" value
float jitterCalc = 0.0; //for scan lines
float jitter;
boolean flying = true;
int counter[] = new int[fibers];
int counterDir[] = new int[fibers];
float[] phases = new float[phasesNum];
float[] fiberX = new float[fibers];
float[] fiberY = new float[fibers];
float[] fiberZ = new float[fibers];
float[] moveX = new float[fibers];
float[] moveY = new float[fibers];
float[] moveZ = new float[fibers];
float[] fiberSize = new float[fibers];
float[][] z = new float[dataPoints][dataPoints];
int mountainPoints = 30;
int mountains = 3;
float[][][] mountainXYs = new float[mountains][2][mountainPoints];  //[mountain #][x,y][points]
float mountainX[] = {0, 0, 0};
float mountainNoise = 0.0;
int lineWeight = 2;
int lineModInitial = 55;
int lineMod = 0;
color gridlineStroke;
color gridFill = colorArray[5];
color fiberCol = colorArray[0];
color mountainFill = colorArray[0];
int mountainFillAlpha = 20;
int skyHueInitial = 40;
int skyHue = 0;
int bgDegrade = 255;
int degradeRate = 1;
//end grid_terrain_flat

//superFormula
float t = 0;

color strokeCol[] = {colorArray[1], colorArray[2]};
int Colorswitcher = 0;
boolean switchGater = true;
float ampMap;

float pitchMap;


//gradients
PImage TL;
PImage TR;
PImage BL;
PImage BR;
PImage SIDES;
float bgAlpha;
float gradientAlpha;
float gradientAlphaBL;
float gradientAlphaBR;
float gradientAlphaTL;
float gradientAlphaTR;

//4d spin
Particle[] p; //declare array object
float[] xShift;
float[] xShift2;
float[] radialOffset;

float partSize = 4;
float density = .03;
float shifted = 30;
float speedActual = 250;
float[] baseX;
float speedVarienceRange = 60;
float[] speedMod;
float angle;
float widthMax;
float widthMin;
float rRange;
float topBuffer;
int oscSwitch = 0; //1 for on, 0 for off
float oscMult = 1.4;

boolean spheres = false;

color partColor = colorArray[0];
int alphaColMin = 80;
float alphaCol = 255;

//whiteNoise
int wnyPos = 720/2;
int wnxPos = 0;
int wnpointSize = 12;

float wnfadeSpeed = 4;  //increase to speed up fade
float wnalpha = 255;
boolean wnfadeTrig = true;

//twoSpheres
float rot1 = 0;
float rot2 = 0;
int satu = 100;
int pulse = 0;
int sCount = 0;

//gridTerrain
int x2;
int y2;
int randomizedElev2 = 300;  //max value of elevation, set 0 for flat grid
int distPower2 = 5; //determines the distribution varience of elevation values
//float spacing2 = 1280/12;  //makes grid spacing relational to canvas width.  If canvas size is changed, insert new width in place of 1280
float spacing2 = 120; //changed spacing to constant to account for camera speed/array update at correct rate
int dataPoints2 = 120;
int fibers2 = 50;  //fibers must be <= phasesNum
int phasesNum2 = 50;  //affects phasing speed, but for the most even distribution keep number same as fibers
int sizeMin2 = 2;  //these ranges will be squared to achieve probability distribution
int sizeMax2 = 5;  //these ranges will be squared to achieve probability distribution
float driftMax2 = 4;
float speedVar2 = 5;
float driftControl2;
float sizeVar2 = 5;
float sizeControl2;
int speed2 = 30; //can be set to any value, but runs smoothest at numbers that are evenly divisable by the set "spacing" value


float jitterCalc2 = 0.0; //for scan lines
float jitter2;

boolean flying2 = true;

int counter2[] = new int[fibers2];
int counterDir2[] = new int[fibers2];

float[] phases2 = new float[phasesNum2];

float[] fiberX2 = new float[fibers2];
float[] fiberY2 = new float[fibers2];
float[] fiberZ2 = new float[fibers2];
float[] moveX2 = new float[fibers2];
float[] moveY2 = new float[fibers2];
float[] moveZ2 = new float[fibers2];
float[] fiberSize2 = new float[fibers2];

float[][] z2 = new float[dataPoints2][dataPoints2];

int mountainPoints2 = 30;
int mountains2 = 3;
float[][][] mountainXYs2 = new float[mountains2][2][mountainPoints2];  //[mountain #][x,y][points]
float mountainX2[] = {0, 0, 0};
float mountainNoise2 = 0.0;

int lineWeight2 = 2;
int lineModInitial2 = 55;
int lineMod2 = 0;
color gridlineStroke2;
color gridFill2 = colorArray[5];
color fiberCol2 = colorArray[0];
color mountainFill2 = colorArray[0];
int mountainFillAlpha2 = 20;
int skyHueInitial2 = 40;
int skyHue2 = 0;

//4DspinOsc
Particle1[] p1; //declare array object
float[] xShift1;
float[] xShift21;
float[] radialOffset1;

float partSize1 = 4;
float density1 = .03;
float shifted1 = 30;
float speedActual1 = 250;
float[] baseX1;
float speedVarienceRange1 = 60;
float[] speedMod1;
float angle1;
float widthMax1;
float widthMin1;
float rRange1;
float topBuffer1;
int oscSwitch1 = 1; //1 for on, 0 for off
float oscMult1 = 2.8;

boolean spheres1 = false;

color partColor1 = colorArray[0];
int alphaColMin1 = 80;
float alphaCol1 = 255;

//fourDSlowSpin
Particle2[] p2; //declare array object
float[] xShift12;
float[] xShift22;
float[] radialOffset2;

float partSize2 = 4;
float density2 = .03;
float shifted2 = 10;
float speedActual2 = 50;
float[] baseX2;
float speedVarienceRange2 = 60;
float[] speedMod2;
float angle2;
float widthMax2;
float widthMin2;
float rRange2;
float topBuffer2;
int oscSwitch2 = 0; //1 for on, 0 for off
float oscMult2 = 1.4;

boolean spheres2 = false;

color partColor2 = colorArray[0];
int alphaColMin2 = 80;
float alphaCol2 = 255;

//tornado
Particle3[] p3; //declare array object
float[] xShift3;
float[] xShift23;
float[] radialOffset3;

float partSize3 = 4;
float density3 = .02;
float shifted3 = 50;
float speedActual3 = 400;
float[] baseX3;
float currentBaseX3 = 0;
int chunkSizeSpeed3 = 25;
float moveSpeed3;
float speedVarienceRange3 = 60;
float[] speedMod3;
float angle3;
float widthMax3;
float widthMin3;
float rRange3;
float topBuffer3;

boolean spheres3 = false;

color partColor3 = colorArray[0];
int alphaColMin3 = 50;
float alphaCol3 = 255;

float PianoFreq;
float PianoAmp;
float RhodesFreq;
float RhodesAmp;
float SaxFreq;
float SaxAmp;
float VoxFreq;
float VoxAmp;
float WindsFreq;
float WindsAmp;
float TromboneFreq;
float TromboneAmp;
float KickAmp;
float SnareAmp;


void draw() {

  println("kickA", kickA);
  println("snareA", snareA);
  println("piano", piano);
  println("pianoA", pianoA);
  println("rodes", rodes);
  println("rodesA", rodesA);
  println("sax", sax);
  println("saxA", saxA);
  println("winds", winds);
  println("windsA", windsA);
  println("bone", bone);
  println("boneA", boneA);
  println("vox", vox);
  println("voxA", voxA);

  println("Scene =", scene, " frameRate =", frameRate, " Screen Capture =", record);




  noCursor();
  scene = sceneSwitch+scene;

  //start INPUT MAPPING,       REPLACE THESE MOUSE MAPPINGS WITH THE RAW INPUT VALUES, ASSUMING ALL RAW DATA RANGES FROM 0-127
  PianoFreq = piano;
  PianoAmp = pianoA;
  RhodesFreq = rodes;
  RhodesAmp = rodesA;
  SaxFreq = sax;
  SaxAmp = saxA;
  VoxFreq = vox;
  VoxAmp = voxA;
  WindsFreq = winds;
  WindsAmp = windsA;
  TromboneFreq = bone;
  TromboneAmp = boneA;
  KickAmp = kickA;
  SnareAmp = snareA;
  //end INPUT MAPPING


  //start Insomnia
  if (scene == 0) {
    IntroWarning();
  }//end scene 0
  else if (scene == 1) {
    introWalkers_intro(map(piano, 0, 127, 0, 250));
  }//end scene 1

  else if (scene == 2) {
    introWalkers_a(map(piano, 0, 127, 0, 250));
  }//end scene 2

  else if (scene == 3) {
    introWalkers_b(map(piano, 0, 127, 0, 250));
  }//end scene 3

  else if ( scene == 4) {
    jitterCube_e(pianoA);
  }//end scene 4

  else if (scene==5) {
    introWalkers_f(sax);
  }//end scene 5

  else if (scene==6) {
    jitterCube_h(saxA);
  } //end scene6

  else if (scene == 7) {
    introWalkers_i(sax);
  }//end scene 7

  else if (scene==8) {
    jitterCube_k(sax);
  }//end scene 8

  else if (scene == 9) {
    jitterWeb(saxA);
  }//end scene 9

  else if (scene == 10) {
    introWalkers_m(sax);
  }//end scene 10

  else if (scene == 11) {
    introWalkers_p(sax, snareA);
  }//end scene 11

  if (scene == 12) {
    fadeOut(4);
  } //end scene 12
  //end Insomnia

  //start Oneirophrenia
  if (scene == 13) {
    grid_terrain_flat(windsA);
  }//end scene 13

  else if (scene == 14) {
    drift(pianoA, saxA);
  }//end scene 14

  else if (scene == 15) {
    points(0);
  }//end scene 15

  else if (scene == 16) {
    fibersFlyingSlow(saxA, sax);
  }//end scene 16

  else if (scene == 17) {
    gridTerrainNoFiber(saxA, sax);
  }//end scene 17

  else if (scene ==18) {
    superFormula(kickA, 0); //no snare mapping first time
  }//end scene 18

  else if (scene == 19) {  
    fibersFlying(saxA, sax);
  }//end scene 19 

  else if (scene == 20) {
    superFormula(snareA, snareA);
  }//end scene 20

  else if (scene == 21) {
    points(saxA);
  }//end scene 21

  else if ( scene == 22) {
    gridTerrain(saxA, sax, kickA);
  }//end scene 22

  else if (scene == 23) {
    points(0);
  }//end scene 23

  else if (scene == 24) {
    fibersFlying(pianoA, saxA);
  }//end scene 24

  else if (scene == 25) {
    sparks_transitionA();
  }//end scene 25
  //end Oneirophrenia

  //start Flying Dreams
  else if (scene == 26) {
    sparks_transitionB();
  }//end scene 26

  else if (scene ==27) {
    sparks_a(kickA);
  }//end scene 27

  else if (scene == 28) {
    gradients(boneA, kickA);
  }//end scene 28

  else if (scene == 29) {
    fourDSpin(boneA);
  } //end scene 29

  else if (scene == 30) {
    gradientsMany(voxA, pianoA, boneA, windsA, kickA);

    eye(width/2, height/2, 150, 20, 1, 222, 100, 100, 1);
  } //end scene 30

  else if (scene ==31) {
    fourDSpin_osc(boneA);
  }//end scene 31

  else if (scene == 32) {
    gradients(pianoA, kickA);
    eye(width/2, height/2, 150, 20, 1, 184, 222, 100, 2);
  }//end scene 32

  else if (scene == 33) {
    fourDSlowSpin(boneA);
  }//end scene 33

  else if (scene == 34) {
    planets();
  }//end scene 34

  else if (scene == 35) {
    trails(5);
    eye(200, height/2, 600, 20, 0.5, 20, 200, 0, 2);
    eye(width-200, height/2, 600, 20, 0.5, 200, 20, 0, 2);
    eye(width/2, height/2, 300, 20, 0.5, 200, 20, 0, 2);
  }//end scene 35

  else if (scene == 36) {
    tornado(saxA );
  }//end scene 36

  else if (scene == 37) {
    gradients(pianoA, windsA);
    alpha = 0;
  }//end scene 37

  else if (scene == 38) {

    fadeOut(1);
  }//end scene 38
  //end Flying Dreams

  //begin Hypnagogia
  else if (scene == 39) {


    hint(ENABLE_DEPTH_TEST);
    whiteNoise_mod();
  } else if (scene ==40) {
    hint(DISABLE_DEPTH_TEST);
    twoSpheres(1000);
  } else if (scene == 41) {

    run.drawTri();
  } else if (scene == 42) {
    cubes(SnareAmp);
  } else if (scene == 43) {
    gradients(SaxAmp, SnareAmp);
  } else if (scene == 44) {
    sparks_a(KickAmp);
  } else if (scene == 45) {
    twoSpheres(1000);
  } else if (scene == 46) {
    sparks_n();
  } else if (scene == 47) {
    sparks_end();
  } else if (scene == 48) {
    if (end <80) { 
      sparks_end2();
    }
    fadeOut(0.5); 
    end ++;
  }
  
  if (record) {
    saveFrame("output/lushh_######.tif");
  }//end screen record
  
}//end draw


float r(float theta, float a, float b, float m, float n1, float n2, float n3) {
  return pow(pow(abs(cos(m * theta/4.0) / a), n2) + 
    pow(abs(sin(m * theta / 4.0) / b), n3), -1.0 / n1);
}

void shapeMirroring() {
  drawShape();
  scale(-1, 1, 1); //inverts x
  drawShape();
  scale(-1, -1, 1); //inverts y
  drawShape();
  scale(-1, 1, 1); //reinverts x
  drawShape();
}


void keyPressed() {
  if (key == '+' || key == '=' || key == ' ') {
    scene++;
  } else if (key == '-') {
    scene--;
  }
  
  if (key == 'r' || key == 'R') {
    record = !record;
  }

  if (scene==5) {
    for (int i = 0; i < introWalkers.length; i++) {
      introWalkers[i].isetup(-100, -100, 0);
    }
  }//end if scene=5
  else if (scene==7) {
    for (int i = 0; i < introWalkers.length; i++) {
      introWalkers[i].isetup(-100, -100, 0);
    }
  }//end if scene=7
  else if (scene==10) {
    for (int i = 0; i < introWalkers.length; i++) {
      introWalkers[i].isetup(-100, -100, 0);
    }
  }//end if scene=10
  else if (scene == 15||scene == 23 || scene == 25 || scene == 35 || scene == 40|| scene == 45) {
    background(0);
  } else if (scene == 14) {
    fiberCol = colorArray[3];
  }
  if (scene == 17) {
    frameCount = 0;
    setupGridTerrainNoFiber();
  }

  if (scene == 21) {
    background(0);
    if (scene == 39) {
      alpha = 255;
    }
  } else if (scene ==41) {
    background(0);
  } else if (scene == 46) {
    background(0);
  } else if (scene == 47) {
    end = 0;
  }
}