//import necessary libraries
import netP5.*;
import oscP5.*;
//create object from OscP5 class
OscP5 MKii;
//global variables to link to data from max
int noteInput, velInput, afterTTT;


void setup() {
  size(1280, 720, P3D);
  //create osc port connection
  MKii = new OscP5(this, 6003);
  //link osc connection to a function in processing and an osc name
  MKii.plug(this, "noteIn", "/noteIn");
  MKii.plug(this, "afterTouch", "/afterTouch");
}

void draw() {
 background(0);
 fill(velInput * 2, velInput +afterTTT);
 noStroke();
 rect(640, map(noteInput, 0, 127, 720, 0), 1000, 10);
  
}