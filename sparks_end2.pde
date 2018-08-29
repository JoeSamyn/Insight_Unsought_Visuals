void sparks_end2(){
   trails(10);
  strokeWeight(2);
  stroke(colorArray[2]);
 for( int i = 0; i < 4; i++){
   point(random(0, width), random(0, height));
 }

  
}