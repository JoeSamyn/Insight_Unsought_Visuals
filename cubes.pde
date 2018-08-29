void cubes(float input1){
 background(colorArray[2]); 
  fill(colorArray[4], 100);

  // Set up some different colored lights
  pointLight(51, 102, 255, 65, 60, 100); 
  pointLight(200, 40, 60, -65, -60, -150);

  // Raise overall light in scene 
  ambientLight(75, 70, 10); 

  // Center geometry in display windwow.
  // you can changlee 3rd argument ('0')
  // to move block group closer(+) / further(-)
  translate(width/2, height/2, height/2-100+input1);

  // Rotate around y and x axes
  rotateY(radians(cubeAngle*2));
  rotateX(radians(cubeAngle*5));

  // Draw cubes
  for (int i = 0; i < cubes.length; i++){
    cubes[i].drawCube();
  }
  
  // Used in rotate function calls above
  cubeAngle += 0.2; 
}