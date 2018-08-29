class Particle3{ //declare class
  float radius;
  float x;
  float y;
  float z;
  float howMany;
  

Particle3(float howHigh, float howWide){
y = howHigh;
radius = howWide;
howMany = int(radius/2*density3*PI);  //relation to total circumference

}


void drawParticle3(float speedChange){ //imports the speed value
  
  rotateY(radians(((speedActual3+speedChange)/radius*frameCount)));
  
  for(int i = 0; i < howMany; i++){
    
    angle3 = radians(i*(360/howMany));
    
    
    x = cos(angle3) * radius;
    z = sin(angle3) * radius;
    if (spheres3){
      pushMatrix();
      translate(x, y, z);
      sphere(partSize3);
      popMatrix();
    }
    else {
      point(x, y, z);
    }
    
    
    
  }
    
  angle3 = 0;
}

}