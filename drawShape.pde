/*
  2________3
1 /|______/|4
  ||      ||
 6||______||7
  |/______|/
 5        8
*/
void drawShape() {
float one[] = {oneN[0]-width/4, oneN[1]-height/4, oneN[2]+0};
float two[] = {twoN[0]-width/4, twoN[1]-height/4, twoN[2]-height/4};
float three[] = {threeN[0]+width/4, threeN[1]-height/4, threeN[2]-height/4};
float four[] = {fourN[0]+width/4, fourN[1]-height/4, fourN[2]+0};
float five[] = {fiveN[0]-width/4, fiveN[1]+height/4, fiveN[2]+0};
float six[] = {sixN[0]-width/4, sixN[1]+height/4, sixN[2]-height/4};
float seven[] = {sevenN[0]+width/4, sevenN[1]+height/4, sevenN[2]-height/4};
float eight[] = {eightN[0]+width/4, eightN[1]+height/4, eightN[2]+0};



  strokeWeight(2);
  stroke(lineCol, (255-200)+inputControl);
  noFill();
  
  beginShape(QUADS); //top
  vertex(one[0], one[1], one[2]);
  vertex(two[0], two[1], two[2]);
  vertex(three[0], three[1], three[2]);
  vertex(four[0], four[1], four[2]);
  endShape(CLOSE);
  
  beginShape(QUADS); //right
  vertex(eight[0], eight[1], eight[2]);
  vertex(seven[0], seven[1], seven[2]);
  vertex(three[0], three[1], three[2]);
  vertex(four[0], four[1], four[2]);
  endShape(CLOSE);
  
  beginShape(QUADS); //bottom
  vertex(eight[0], eight[1], eight[2]);
  vertex(seven[0], seven[1], seven[2]);
  vertex(six[0], six[1], six[2]);
  vertex(five[0], five[1], five[2]);
  endShape(CLOSE);
  
  beginShape(QUADS); //left
  vertex(one[0], one[1], one[2]);
  vertex(two[0], two[1], two[2]);
  vertex(six[0], six[1], six[2]);
  vertex(five[0], five[1], five[2]);
  endShape(CLOSE);
  
  beginShape(QUADS); //front
  vertex(eight[0], eight[1], eight[2]);
  vertex(five[0], five[1], five[2]);
  vertex(one[0], one[1], one[2]);
  vertex(four[0], four[1], four[2]);
  endShape(CLOSE);
  
  beginShape(QUADS); //back
  vertex(six[0], six[1], six[2]);
  vertex(seven[0], seven[1], seven[2]);
  vertex(three[0], three[1], three[2]);
  vertex(two[0], two[1], two[2]);
  endShape(CLOSE);
  
  
}