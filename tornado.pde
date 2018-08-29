void tornado(float input1){
    alphaCol3 = map(input1, 0, 127, alphaColMin3, 255);
  //baseX3[baseX3.length-1] = map(input2, 0, 127, width/2, width/2);  //turned off x mapping
  
  
  translate(width/2, 0);
  background(0);
  if (spheres3){
    noStroke();
    fill(partColor3, alphaCol3);
  }
  else {
    noFill();
    strokeWeight(partSize3);
    stroke(partColor3, alphaCol3);
  }
  
  
  for (int i = 0; i < p3.length; i++){
    
  if(i % chunkSizeSpeed3 == 0 && i/chunkSizeSpeed3 < baseX3.length-1){
    
    baseX3[i/chunkSizeSpeed3] = baseX3[i/chunkSizeSpeed3+1];
    currentBaseX3 = baseX3[i/chunkSizeSpeed3];
    }
    
      //int iInverse = p.length-1-i;
  float v = .2*frameCount+i*.03; //higher number means faster read-through speed, noise smoothness
  
  xShift3[i] = map(noise(v), 0, 1, -float(height)/float(width)*shifted3, float(height)/float(width)*shifted3);
  xShift23[i] = map(noise(v-3), 0, 1, -float(height)/float(width)*shifted3, float(height)/float(width)*shifted3);
  
  pushMatrix();
  translate(0+xShift3[i] + currentBaseX3, 0, 0+xShift23[i]);
  rotateY(radialOffset3[i]);
  
  p3[i].drawParticle3(speedMod3[i]);
  popMatrix();
  
  

  }
  
}