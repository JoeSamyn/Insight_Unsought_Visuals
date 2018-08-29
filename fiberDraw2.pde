void fiberDraw2(int i) {
  if (counter2[i] == phases2.length) {
    counterDir2[i] = -1;
    counter2[i]--;
  }
  else if (counter2[i] == -1){
    counterDir2[i] = 1;
    counter2[i]++;
    
    if(!flying2) {
    fiberX2[i] = random(-width/2, width/2);
    fiberY2[i] = random(-height/2, height/4);
    fiberZ2[i] = random(-height, 0);}
    else {
    fiberX2[i] = random(-width*2, width*2);
    fiberY2[i] = random(-height, height/4);
    fiberZ2[i] = random(-height*speed2/4, -height);
    }
    moveX2[i] = random(-driftMax2, driftMax2);
    moveY2[i] = random(-driftMax2, driftMax2);
    moveY2[i] = random(-driftMax2, driftMax2);
    fiberSize2[i] = sq(random(sizeMin2, sizeMax2));
    
  }
  fill(fiberCol2, phases2[counter2[i]]);
  pushMatrix();
  translate(fiberX2[i], fiberY2[i], fiberZ2[i]);
  sphere(fiberSize2[i] * sizeControl2);
  popMatrix();
  counter2[i] = counter2[i] + counterDir2[i];
  fiberX2[i] = fiberX2[i] + moveX2[i] * driftControl2;
  fiberY2[i] = fiberY2[i] + moveY2[i] * driftControl2;
  if (!flying2) {
  fiberZ2[i] = fiberZ2[i] + moveZ2[i] * driftControl2;}
  else {fiberZ2[i] = fiberZ2[i] + moveZ2[i] + speed2;
  }
}