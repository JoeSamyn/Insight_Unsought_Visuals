void grid_terrain_flat(float input1){
  mountainFill = song2[3];
  skyHue = song2[5];
  
    gridAlpha = map(input1, 0, 127, 40, 255);  //PARAMETER INPUT 1
  
  //lineMod = decrease(lineMod);
  //skyHue = decrease(skyHue); 
  
  
  
  //gridlineStroke = color(40 + lineMod, 0 + lineMod, 200 + lineMod);
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
  
  fill(0, bgDegrade);
  rect(0, 0, width, height);
  if (bgDegrade > 0){
    bgDegrade= bgDegrade - degradeRate;
  }
  hint(ENABLE_DEPTH_TEST);                         //returns to rendering in 3D after converting to 2D to draw scanlines layer
  
  
  
  
  
  
  
}