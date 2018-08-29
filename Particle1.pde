class Particle1{ //declare class
  float radius;
  float x;
  float y;
  float z;
  float howMany;
  

Particle1(float howHigh, float howWide){
y = howHigh;
radius = howWide;
howMany = int(radius/2*density1*PI);  //relation to total circumference

}


void drawParticle(float speedChange, float offset){ //imports the speed value
  
  rotateY(radians(((speedActual1+speedChange)/radius*frameCount)));
  
  for(int i = 0; i < howMany; i++){
    
    angle1 = radians(i*(360/howMany));
    
    
    x = cos(angle1) * radius;
    z = sin(angle1) * radius;
    if (spheres1){
      pushMatrix();
      translate(x + offset, y, z);
      sphere(partSize1);
      popMatrix();
    }
    else {
      point(x + offset, y, z);
    }
    
    
    
  }
    
  angle1 = 0;
}

}