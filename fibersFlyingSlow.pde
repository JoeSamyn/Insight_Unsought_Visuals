void fibersFlyingSlow(float input1, float input2){
  background(0);
  noStroke();
  
  driftControl = map(input2, 0, 720, 1, speedVar); //PARAMETER INPUT 2
  sizeControl = map(input1, 0, 1165, 1, sizeVar);  //PARAMETER INPUT 1
  
  pushMatrix();
  translate(width/2, height);
    
    for (int f = 0; f < fibers; f++){
      if(f%2 ==0 ){
        fiberCol = colorArray[0];
      }else if( f%2 ==1 ){
        fiberCol = colorArray[1];
      }
        
    fiberDraw(f);
    }
  
    
    
  popMatrix(); 
}