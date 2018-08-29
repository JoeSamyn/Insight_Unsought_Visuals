void fadeOut(float s){
  fadeTrig = true;
  fadeSpeed = s;
    noStroke();
  fill(0, alpha);
  rect(0,0, width, height);
  
  if (fadeTrig){
  alpha = alpha + fadeSpeed;
  }
  
}