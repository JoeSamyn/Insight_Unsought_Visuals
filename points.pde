void points(float input1){
      trails(5);
  if(frameCount%28==0){

    int weight = int(map(input1, 0, 127, 0, 15));
    
 strokeWeight(25+weight);
 
  for(int i = 0; i < 50; i++){
   if(i%3 ==0){
     stroke(song2[1]);
   } else if (i%3 == 1){
     stroke(colorArray[3]);
   } else {
     stroke(colorArray[4]);
   }
    point(random(0, width),random(0, height));
    
  }
  }
}