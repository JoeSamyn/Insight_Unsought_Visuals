void planets() {
  pushMatrix();
  background(0);
  translate(width/2, height/2);
  pushMatrix();

  lights();

  sun.show();
  sun.orbit();
  popMatrix();

  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
  popMatrix();
}