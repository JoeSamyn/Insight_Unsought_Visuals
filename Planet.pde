class Planet {
  float rad;
  float angle;
  float dist;
  Planet[] planets;
  float orbitSpeed;
  PVector v;
  
Planet(float r, float d, float o) {
 v = PVector.random3D();
  
  rad = r;
 dist =  d;
 v.mult(dist);
 angle = random(0, TWO_PI);
 rotate(angle);
 orbitSpeed = random(0.01, 0.03);
}

void orbit() {
  angle = angle + orbitSpeed;
  if (planets != null){
  for (int i = 0; i < planets.length; i++){
    planets[i].orbit();
  }
  }
  
}

void spawnMoon(int total) {
  planets = new Planet[total];
  for (int i = 0; i < planets.length; i++){
    float r = rad*0.5;
    float d = random(75, 300);
    float o = random(0.1, 0.2);
    planets[i] = new Planet(r, d, o);
  }
  
}

void show() {
  pushMatrix();
  noStroke();
 
 PVector v2 = new PVector(1, 0, 1);
 PVector p = v.cross(v2);
 rotate(angle, p.x, p.y, p.z);
 
  translate(v.x, v.y, v.z);
  fill(255);
  sphere(rad);
  //ellipse(0, 0, rad*2, rad*2);
  
  if (planets != null){
  for (int i = 0; i < planets.length; i++){
   // fill(255, random(0, 255), random(0,255));
    planets[i].show();
  }
  }
  popMatrix();
}


}