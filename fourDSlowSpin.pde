void fourDSlowSpin(float input1){
    
  alphaCol2 = map(input1, 0, 127, alphaColMin2, 255); //INPUT PARAMETER 1
  
  translate(width/2, height/2);
  scale(1, 2);
  translate(0, -height/2);
  background(0);
  if (spheres2){
    noStroke();
    fill(partColor2, alphaCol2);
  }
  else {
    noFill();
    strokeWeight(partSize2);
    stroke(partColor2, alphaCol2);
  }
  
  
  
  baseX2[p2.length-1] += oscSwitch2*oscMult2;
  
  if (baseX2[p2.length-1] < -width/2){
    oscSwitch2 = 1;
  }
  else if(baseX2[p2.length-1] > width/2){
    oscSwitch2 = -1;
  }
  
  
  for (int i = 0; i < p2.length; i++){
      int iInverse = p2.length-1-i;
  float v = 0.0003*frameCount*i;
  
  xShift12[i] = map(noise(v), 0, 1, -float(height)/float(width)*shifted2, float(height)/float(width)*shifted2);
  xShift22[i] = map(noise(v), 0, 1, -float(height)/float(width)*shifted2, float(height)/float(width)*shifted2);
  
  pushMatrix();
  rotateY(radialOffset2[i]);
  translate(0+xShift12[i], 0, 0+xShift22[i]);
  
  p2[i].drawParticle2(speedMod2[i], baseX2[i]);
  popMatrix();
  
  if (iInverse > 0){
    baseX2[iInverse-1] = baseX2[iInverse];
    }

  }
  println(baseX2[200]);
  
}