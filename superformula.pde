void superFormula(float input1, float input2){ 
if(frameCount%2==0){
  pitchMap = map(input1, 0, 127, 0, height/4);  //INPUT PARAMETER 1
  ampMap = input2;    //INPUT PARAMETER 2
  
  if (ampMap > 70 && switchGater){                    
    if (Colorswitcher == 0){
      Colorswitcher = 1;
    switchGater = false;
    }
    else if (Colorswitcher == 1 && switchGater){
      Colorswitcher = 0;
    switchGater = false;
    }
  }
  if (ampMap < 500){
    switchGater = true;
  }
  
  if(frameCount % 2 == 0){
  
  noFill();
  strokeWeight(6);
  background(0);
  stroke(strokeCol[Colorswitcher]);
  translate(width / 2, height / 2);

 beginShape();
 
 for (float theta = 0; theta <= 2 * PI; theta += .1) {
   float rad = r(theta,
     1,  // a
    1,  // b
     pitchMap / 100.0,  // m
      2 , // n1
     random(0, 50),  // n2
     random(0, 30)  // n3
   );
   float x = rad* cos(theta) * 50;
   float y = rad * sin(theta) * 50;
   vertex (x,y);
 }
 endShape();
  t += .1;
}
}

}
  