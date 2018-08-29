class Particle2{ //declare class
  float radius;
  float x;
  float y;
  float z;
  float howMany;
  

Particle2(float howHigh, float howWide){
y = howHigh;
radius = howWide;
howMany = int(radius/2*density2*PI);  //relation to total circumference

}


void drawParticle2(float speedChange, float offset){ //imports the speed value
  
  rotateY(radians(((speedActual2+speedChange)/radius*frameCount)));
  
  for(int i = 0; i < howMany; i++){
    
    angle2 = radians(i*(360/howMany));
    
    
    x = cos(angle2) * radius;
    z = sin(angle2) * radius;
    if (spheres2){
      pushMatrix();
      translate(x + offset, y, z);
      sphere(partSize2);
      popMatrix();
    }
    else {
      point(x + offset, y, z);
    }
    
    
    
  }
    
  angle2 = 0;
}

}