void fiberDraw(int i) {
  fiberCol = song2[3];
  
  if (counter[i] == phases.length) {
    counterDir[i] = -1;
    counter[i]--;
  }
  else if (counter[i] == -1){
    counterDir[i] = 1;
    counter[i]++;
    
    if(!flying) {
    fiberX[i] = random(-width/2, width/2);
    fiberY[i] = random(-height/2, height/4);
    fiberZ[i] = random(-height, 0);}
    else {
    fiberX[i] = random(-width*2, width*2);
    fiberY[i] = random(-height, height/4);
    fiberZ[i] = random(-height*speed/4, -height);
    }
    moveX[i] = random(-driftMax, driftMax);
    moveY[i] = random(-driftMax, driftMax);
    moveY[i] = random(-driftMax, driftMax);
    fiberSize[i] = sq(random(sizeMin, sizeMax));
    
  }
  fill(fiberCol, phases[counter[i]]);
  pushMatrix();
  translate(fiberX[i], fiberY[i], fiberZ[i]);
  sphere(fiberSize[i] * sizeControl);
  popMatrix();
  counter[i] = counter[i] + counterDir[i];
  fiberX[i] = fiberX[i] + moveX[i] * driftControl;
  fiberY[i] = fiberY[i] + moveY[i] * driftControl;
  if (!flying) {
  fiberZ[i] = fiberZ[i] + moveZ[i] * driftControl;}
  else {fiberZ[i] = fiberZ[i] + moveZ[i] + speed;
  }
  
}