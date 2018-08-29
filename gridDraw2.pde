void gridDraw2() {  
  fill(gridFill2);
  strokeWeight(lineWeight2);
  stroke(gridlineStroke2);  
  
    for (int yLoc = 0; yLoc < z2.length; yLoc++) { 
  for (int xLoc = 0; xLoc < z2.length; xLoc++) {
  beginShape(QUADS);
    x2 = xLoc;
    y2 = yLoc;
    
    vertex(x2*spacing2, y2*spacing2, zMap2()); //0,0
    
    y2++;
    if (y2 == dataPoints2) {
      yBound2();
      endShape();
      beginShape(QUADS);
    }
    vertex(x2*spacing2, y2*spacing2, zMap2()); //0,1
    
    x2++;
    if (x2 == dataPoints2) {
      xBound2();
      endShape();
      beginShape(QUADS);
    }
    vertex(x2*spacing2, y2*spacing2, zMap2()); //1,1
    
    y2--;
    if (y2 < 0) {
      yBound2();
      endShape();
      beginShape(QUADS);
    }
    vertex(x2*spacing2, y2*spacing2, zMap2()); //1,0
    
    x2--;
    if (x2 < 0) {
      xBound2();
      endShape();
      beginShape(QUADS);
    }
    vertex(x2*spacing2, y2*spacing2, zMap2()); //0,0
    
    endShape();
  }}
}