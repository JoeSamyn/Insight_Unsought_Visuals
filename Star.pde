class Star {
  float x;
  float y;
  float z;
  
Star() {
  x = random(-width, width);
  y = random(-height, height);
  z = random(width);
}

void update() {
 // rotateZ(TWO_PI);
  z = z- 5;
  if (z < 1){
    z = width;
  }
}

void show() {
  //pushMatrix();
 // translate(width/2, height/2);
 // rotateY(TWO_PI);
  float sx = map(x/z, 0, 1, 0, width);
  float sy = map(y/z, 0, 1, 0, height);
  float r = map(z, 0, width, 8, 0);
  fill(255);
  noStroke();
  ellipse(sx, sy, r, r);
  //popMatrix();
  
}
}