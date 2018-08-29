void sparks(int points, float power, int center){

  //stroke(colorArray[0]);
  strokeWeight(2);
  
  pushMatrix();
  translate(0,center);
  
  for(int i = 0; i < points; i++){
    float x = random(0, width);
    float y = random(1);
    y = (pow(y, power) * height/2);
    point(x,y);
    point(x,-y);
    
  }

  popMatrix();
}