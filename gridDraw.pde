void gridDraw() {  
  gridFill = song2[5];
  fill(gridFill);
  gridlineStroke= song2[0];
  strokeWeight(lineWeight);
  stroke(gridlineStroke, gridAlpha);  
  
    for (int yLoc = 0; yLoc < z.length; yLoc++) { 
  for (int xLoc = 0; xLoc < z.length; xLoc++) {
  beginShape(QUADS);
    x = xLoc;
    y = yLoc;
    
    vertex(x*spacing, y*spacing, zMap()); //0,0
    
    y++;
    if (y == dataPoints) {
      yBound();
      endShape();
      beginShape(QUADS);
    }
    vertex(x*spacing, y*spacing, zMap()); //0,1
    
    x++;
    if (x == dataPoints) {
      xBound();
      endShape();
      beginShape(QUADS);
    }
    vertex(x*spacing, y*spacing, zMap()); //1,1
    
    y--;
    if (y < 0) {
      yBound();
      endShape();
      beginShape(QUADS);
    }
    vertex(x*spacing, y*spacing, zMap()); //1,0
    
    x--;
    if (x < 0) {
      xBound();
      endShape();
      beginShape(QUADS);
    }
    vertex(x*spacing, y*spacing, zMap()); //0,0
    
    endShape();
  }}
}