void sparks_a(float input1){
  
  float pow = map( input1, 0, 127, 1, 10);
  trails(30);
  stroke(song3[0]);
    sparks(500, pow, height/2);
}