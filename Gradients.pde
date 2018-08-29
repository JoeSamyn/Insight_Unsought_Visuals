void gradients(float input1, float input2) {
  background(0);
  noStroke();
  gradientAlpha = map(input1, 0, 127, 0, 255);  //INPUT PARAMETER 1 sides
  bgAlpha = map(input2, 0, 127, 100, 255);  //INPUT PARAMETER 2 background
  
  fill(colorArray[4], bgAlpha);
  rect(0, 0, width, height);
  
  tint(colorArray[2], gradientAlpha);
  image(SIDES, 0, 0, width, height);
  
}