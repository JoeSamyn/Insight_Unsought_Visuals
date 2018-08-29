void gradientsMany(float input1, float input2, float input3, float input4, float input5){
   background(0);
  noStroke();
  bgAlpha = map(input5, 0, 127, 50, 255);  //DRUMS LEVEL
  gradientAlphaBL = map(input1, 0, 127, 0, 255);  //VOX LEVEL
  gradientAlphaBR = map(input2, 0, 127, 0, 255);  //PIANO LEVEL
  gradientAlphaTL = map(input4, 0, 127, 0, 255);  //CLARINET LEVEL
  gradientAlphaTR = map(input3, 0, 127, 0, 255);  //TROMBONE LEVEL
  
  fill(colorArray[4], bgAlpha);
  rect(0, 0, width, height);
  
  tint(colorArray[0], gradientAlphaBL);
  image(BL, 0, 0, width, height);
  
  tint(colorArray[2], gradientAlphaBR);
  image(BR, 0, 0, width, height);
  
  tint(colorArray[3], gradientAlphaTL);
  image(TL, 0, 0, width, height);
  
  tint(colorArray[1], gradientAlphaTR);
  image(TR, 0, 0, width, height);
   
}