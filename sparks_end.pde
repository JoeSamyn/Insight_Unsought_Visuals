void sparks_n(){
  trails(10);
  strokeWeight(2);
  stroke(colorArray[2]);
 for( int i = 0; i < 1000; i++){
   point(random(0, width), random(0, height));
 }
}

void sparks_end(){
  trails(10);
  strokeWeight(2);
  stroke(colorArray[2]);
 for( int i = 0; i < 500-end; i++){
   point(random(0, width), random(0, height));
 }
 if (end< 495){end+=2;}
}