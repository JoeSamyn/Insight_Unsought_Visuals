void gridTerrainNoFiber(float input1, float input2){
  driftControl = map(input2, 0, 217, 1, speedVar); //PARAMETER INPUT 2
  sizeControl = map(input1, 0, 127, 1, sizeVar);  //PARAMETER INPUT 1
  
  lineMod = decrease(lineMod);
  skyHue = decrease(skyHue); 
  
  
  gridlineStroke = color(40 + lineMod, 0 + lineMod, 200 + lineMod);
  background(skyHue, 0, skyHue/2);
  
  hint(DISABLE_DEPTH_TEST); //switches to 2D
  pushMatrix(); translate(-width/2, height/2-height/32);
  
  strokeWeight(lineWeight);
  noStroke();
  fill(mountainFill, mountainFillAlpha+skyHue);
  
    
    
    for (int m = 0; m < mountains; m++){
      beginShape();
      vertex(0,height);
      for (int i = 0; i < mountainPoints; i++) {
        vertex(mountainXYs[m][0][i] , mountainXYs[m][1][i]);
      }
      vertex(width*2, height);
      endShape(CLOSE);
    }
    
    
  
  
  popMatrix();
  hint(ENABLE_DEPTH_TEST);//switches to 3D
  
  
  pushMatrix();
  translate(0, -150, frameCount*speed+spacing*4);   //moves "camera" across plane, begins four grids deep so the regenerate function isn't de-smoothing values in the [0] x index that are in view of the camera
  translate((width/2)-(dataPoints*spacing)/2, height, randomizedElev);
  rotateX(radians(270));
  
  gridDraw();                                      //draws grid based on array values
  popMatrix();
  
  if (frameCount*speed >= spacing) { //(if frameCount == 120, at default speed)
  regenerate();
  frameCount = 0;
  }
  //println(frameCount);
  
  noStroke();
  
  
  pushMatrix();
  translate(width/2, height/2);
    for (int f = 0; f < fibers; f++){
    //fiberDraw(f);                                  //draws fibers
    }
  popMatrix();
  
  hint(DISABLE_DEPTH_TEST);                        //renders a layer on top of previous graphics, by switching to 2D
  scanlinesDraw();                                 //draws scanlines
  hint(ENABLE_DEPTH_TEST);                         //returns to rendering in 3D after converting to 2D to draw scanlines layer
  
   
}


void setupGridTerrainNoFiber(){
 {
    randomizedElev = 300;
    speed = 20;
    for (int y = 0; y < dataPoints; y++) { //maps z to each "x and y" point of the grid array
  for (int x = 0; x < dataPoints; x++) {
     z[x][y] = (probabilityDistZ(distPower, randomizedElev)+probabilityDistZ(distPower, randomizedElev)+probabilityDistZ(6*distPower, 6*randomizedElev))/3; //generates randomized elevations, consists of an average of two relatively smooth layers and one more extreme-value layer
  }
}
  for (int i = 0; i < phasesNum; i++){ //initializes fiber phases
    phases[i] = 255/phasesNum*i;
  }
  for (int i = 0; i < fibers; i++){  //initializes fibers
    if(!flying) {
    fiberX[i] = random(-width/2, width/2);
    fiberY[i] = random(-height/2, height/4);
    fiberZ[i] = random(-height, 0);}
    else {
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
    counterDir[i] = 1;}
    else {
    counterDir[i] = -1;}
  }
  for (int m = 0; m < mountains; m++){
  for (int i = 0; i < mountainPoints; i++){  //initializes mountain x points
  
    mountainXYs[m][0][i] = random(0, width/mountainPoints*4) + mountainX[m];
    mountainX[m] = mountainXYs[m][0][i];
    
    mountainXYs[m][1][i] = (noise(mountainNoise) * (height/8))-(height/24)*(m+1);
    mountainNoise = mountainNoise + 4;
  }
}
  } 
}