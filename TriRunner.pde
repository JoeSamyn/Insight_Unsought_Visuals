class TriRunner {

  float startX;
  float startY;
  int runCount;

  TriRunner() {
    startX = 650;
    startY = 360;
    runCount = 0;

    for (int j = 0; j< triXPos.length; j++) {
      triXPos[j] = startX;
      triYPos[j] = startY;
    }
  }

  void drawTri() {

    if (runCount == 0) {
      trails(12);
      float xMov = generate(200, 350);
      float yMov = generate(200, 350);

      triXPos[0] = triXPos[0]+ xMov;
      triYPos[0] = triYPos[0] + yMov;

      triXPos[0] = constrain(triXPos[0], 0, width);
      triYPos[0] = constrain(triYPos[0], 0, height);
      stroke(0);
      strokeWeight(1);
      fill(200, 50, 100);
      beginShape(TRIANGLE_STRIP);
      vertex(triXPos[2], triYPos[2]);
      vertex(triXPos[3], triYPos[3]);
      vertex(triXPos[4], triYPos[4]);
      vertex(triXPos[5], triYPos[5]);
      vertex(triXPos[6], triYPos[6]);
      vertex(triXPos[7], triYPos[7]);
      vertex(triXPos[8], triYPos[8]);
      endShape();
      //println("x", triXPos[0], "y", triYPos[0]);
      fill(100, 100, 100);
      beginShape(TRIANGLES);
      vertex(triXPos[0], triYPos[0]);
      vertex(triXPos[1], triYPos[1]);
      vertex(triXPos[2], triYPos[2]);
      endShape();

      for (int i = triXPos.length-1; i > 0; i--) {
        triXPos[i] = triXPos[i-1];
        triYPos[i] = triYPos[i-1];
      }
      runCount++;
    }//if run
    else if( runCount == 1){
      runCount = 0; }
    
  }
}