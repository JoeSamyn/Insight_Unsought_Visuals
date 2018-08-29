void fourDSpin(float input1){
 alphaCol = map(input1, 0, 127, alphaColMin, 255); //INPUT PARAMETER 1
  
  translate(width/2, 0);
  background(0);
  if (spheres){
    noStroke();
    fill(partColor, alphaCol);
  }
  else {
    noFill();
    strokeWeight(partSize);
    stroke(partColor, alphaCol);
  }
  
  
  
  baseX[p.length-1] += oscSwitch*oscMult;
  
  if (baseX[p.length-1] < -width/2){
    oscSwitch = 1;
  }
  else if(baseX[p.length-1] > width/2){
    oscSwitch = -1;
  }
  
  
  for (int i = 0; i < p.length; i++){
      int iInverse = p.length-1-i;
  float v = 0.0003*frameCount*i;
  
  xShift[i] = map(noise(v), 0, 1, -float(height)/float(width)*shifted, float(height)/float(width)*shifted);
  xShift2[i] = map(noise(v), 0, 1, -float(height)/float(width)*shifted, float(height)/float(width)*shifted);
  
  pushMatrix();
  rotateY(radialOffset[i]);
  translate(0+xShift[i], 0, 0+xShift2[i]);
  
  p[i].drawParticle(speedMod[i], baseX[i]);
  popMatrix();
  
  if (iInverse > 0){
    baseX[iInverse-1] = baseX[iInverse];
    }

  }
  println(baseX[200]);
   
}