class Particle{ //declare class
  float radius;
  float x;
  float y;
  float z;
  float howMany;
  

Particle(float howHigh, float howWide){
y = howHigh;
radius = howWide;
howMany = int(radius/2*density*PI);  //relation to total circumference

}


void drawParticle(float speedChange, float offset){ //imports the speed value
  
  rotateY(radians(((speedActual+speedChange)/radius*frameCount)));
  
  for(int i = 0; i < howMany; i++){
    
    angle = radians(i*(360/howMany));
    
    
    x = cos(angle) * radius;
    z = sin(angle) * radius;
    if (spheres){
      pushMatrix();
      translate(x + offset, y, z);
      sphere(partSize);
      popMatrix();
    }
    else {
      point(x + offset, y, z);
    }
    
    
    
  }
    
  angle = 0;
}

}