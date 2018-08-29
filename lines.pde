int cchance;

void lines(int lineWidth, int lineAmount, int leftStart, int leftRange, int rightStart, int rightRange) {
  if (frameCount%2==0) {
    hint(DISABLE_DEPTH_TEST);
    strokeWeight(lineWidth);


    for (int i = 0; i < lineAmount; i++) {
      cchance = int(random(3));
      if (cchance==0) {
        stroke(colorArray[0]);
      } else if (cchance==1) {
        stroke(colorArray[1]);
      } else if (cchance==2) {
        stroke(colorArray[2]);
      }
      float yLineStart = random(leftStart, leftRange);
      float yLineEnd = random(rightStart, rightRange);
      line(0, yLineStart, width, yLineEnd);
    }
  }
}