void scanlinesDraw2() {
  int lines = 120; //number of lines
  int scanlinesAlpha = 6; //baseline alpha to be multiplied to jitter, will be roughly half this number most of the time
  float jitterRange = 1.2; //jitter multiplier (varience of transparency), smaller values equate to greater varience
  float jitterStepSize = 0.08; //"speed" of jitter
  int scanLight = 25;
  int scanDark = 230;
  int scanlinesSwitch = scanLight;
  
    jitter2 = noise(jitterCalc2);
    jitterCalc2 = jitterStepSize + jitterCalc2;
  
  scanlinesSwitch = scanLight;
  for (int i = 0; i < lines*2; i++) {  
  if (scanlinesSwitch == scanLight) {
    scanlinesSwitch = scanDark;
  }
    else {
      scanlinesSwitch = scanLight;
    }
    
    
    
    fill(scanlinesSwitch, (map(jitter2, 0, 1, -scanlinesAlpha/jitterRange, scanlinesAlpha/jitterRange) + scanlinesAlpha));
    rect(0, i*(height/lines), width, height/lines);
  }

    //println(jitter);
}