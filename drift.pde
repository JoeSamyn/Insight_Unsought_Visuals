void drift(float input1, float input2){
  background(0); 
  fill(colorArray[3]);
  //trails(50);
  
  driftControl = map(input1, 0, 127, 1, speedVar); //PARAMETER INPUT 1
  sizeControl = map(input2, 0, 127, 1, sizeVar);  //PARAMETER INPUT 2
  
  pushMatrix();
  translate(width/2, height/2);
    
    for (int f = 0; f < fibers; f++){
    fiberDraw(f);
    }
  
    
    
  popMatrix(); 
}