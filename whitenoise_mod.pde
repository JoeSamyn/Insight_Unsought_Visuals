void whiteNoise_mod() {
   
 //fadeTrig = true;
 int pointSize = 8;
    
  
  if (frameCount % 4 == 0){
 background(0);
 strokeWeight(pointSize);
 for(int i = 0; i < width*2 +1; i+=pointSize){
   for(int j = 0; j < height +1; j+=pointSize){
     int yPos, xPos;
     
   yPos = j;
   xPos = i;
   stroke(random(255));
   rectMode(CENTER);
   rect(xPos+pointSize/2,yPos+pointSize/2, pointSize/2, pointSize/2);
   }
 }
 
  rectMode(CORNER);
  noStroke();
  
  pushMatrix();
  
  translate(0,0, 1);
  fill(100, 150);            //contrast control
  rect(0,0, width, height);
  
  translate(0,0, 1);
  fill(song4[5], 100);       //color
  rect(0,0, width, height);
   
  
  translate(0,0, 1);
  
  
  fill(0, wnalpha);            //fadeIn
  rect(0,0, width, height);
  
  
  if (wnfadeTrig){
  wnalpha = wnalpha - wnfadeSpeed;
  }
  
 
  popMatrix(); 
}}