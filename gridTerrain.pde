void gridTerrain(float input1, float input2, float input3){
   driftControl2 = map(input2, 0, 127, 1, speedVar2); //PARAMETER INPUT 2
  sizeControl2 = map(input1, 0, 127, 1, sizeVar2);    //PARAMETER INPUT 1
  
  lineMod2 = int(map(input3, 0, 127, 0, 100));        //PARAMETER INPUT 3
  
  //lineMod2 = decrease2(lineMod2);
  skyHue2 = decrease2(skyHue2); 
  
  
  gridlineStroke2 = color(40 + lineMod2, 0 + lineMod2, 200 + lineMod2);
  background(skyHue2, 0, skyHue2/2);
  
  hint(DISABLE_DEPTH_TEST); //switches to 2D
  pushMatrix(); translate(-width/2, height/2-height/32);
  
  strokeWeight(lineWeight2);
  noStroke();
  fill(mountainFill2, mountainFillAlpha2+skyHue2);
  
    
    
    for (int m = 0; m < mountains2; m++){
      beginShape();
      vertex(0,height);
      for (int i = 0; i < mountainPoints2; i++) {
        vertex(mountainXYs2[m][0][i] , mountainXYs2[m][1][i]);
      }
      vertex(width*2, height);
      endShape(CLOSE);
    }
    
    
  
  
  popMatrix();
  hint(ENABLE_DEPTH_TEST);//switches to 3D
  
  
  pushMatrix();
  translate(0, -150, frameCount*speed2+spacing2*4);   //moves "camera" across plane, begins four grids deep so the regenerate function isn't de-smoothing values in the [0] x index that are in view of the camera
  translate((width/2)-(dataPoints2*spacing2)/2, height, randomizedElev2);
  rotateX(radians(270));
  
  gridDraw2();                                      //draws grid based on array values
  popMatrix();
  
  if (frameCount*speed2 >= spacing2) { //(if frameCount == 120, at default speed)
  regenerate2();
  frameCount = 0;
  }
  //println(frameCount);
  
  noStroke();
  
  
  pushMatrix();
  translate(width/2, height/2);
    for (int f = 0; f < fibers2; f++){
    fiberDraw2(f);                                  //draws fibers
    }
  popMatrix();
  
  hint(DISABLE_DEPTH_TEST);                        //renders a layer on top of previous graphics, by switching to 2D
  scanlinesDraw2();                                 //draws scanlines
  hint(ENABLE_DEPTH_TEST);                         //returns to rendering in 3D after converting to 2D to draw scanlines layer
   
  
}