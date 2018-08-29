void fibersFlying(float input1, float input2){
   background(0);
  noStroke();
  
  driftControl = map(input2, 0, 127, 1, speedVar); //PARAMETER INPUT 2
  sizeControl = map(input1, 0, 127, 1, sizeVar);   //PARAMETER INPUT 1
  
  pushMatrix();
  translate(width/2, height);
    
    for (int f = 0; f < fibers; f++){
    fiberDraw(f);
    }
  
  popMatrix();
}