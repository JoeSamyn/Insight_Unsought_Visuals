void fourDSpin_osc(float input1){
   alphaCol1 = map(input1, 0, 127, alphaColMin1, 255); //INPUT PARAMETER 1
  
  translate(width/2, 0);
  background(0);
  if (spheres1){
    noStroke();
    fill(partColor1, alphaCol1);
  }
  else {
    noFill();
    strokeWeight(partSize1);
    stroke(partColor1, alphaCol1);
  }
  
  
  
  baseX1[p1.length-1] += oscSwitch1*oscMult1;
  
  if (baseX1[p1.length-1] < -width/2){
    oscSwitch1 = 1;
  }
  else if(baseX1[p1.length-1] > width/2){
    oscSwitch1 = -1;
  }
  
  
  for (int i = 0; i < p1.length; i++){
      int iInverse = p1.length-1-i;
  float v = 0.0003*frameCount*i;
  
  xShift1[i] = map(noise(v), 0, 1, -float(height)/float(width)*shifted1, float(height)/float(width)*shifted1);
  xShift21[i] = map(noise(v), 0, 1, -float(height)/float(width)*shifted1, float(height)/float(width)*shifted1);
  
  pushMatrix();
  rotateY(radialOffset1[i]);
  translate(0+xShift1[i], 0, 0+xShift21[i]);
  
  p1[i].drawParticle(speedMod1[i], baseX1[i]);
  popMatrix();
  
  if (iInverse > 0){
    baseX1[iInverse-1] = baseX1[iInverse];
    }

  }
  println(baseX1[200]);
  
}