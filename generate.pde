float generate(float min, float max){
  float range = max-min;
  float value = random(1);
  value = min + value*range;
  int coinflip = int(random(2));
  if (coinflip == 1){ value = -value;}
  //println(value);
  return value;
  
}