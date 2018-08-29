void twoSpheres(float size) {
  trails(40);
  sphereDetail(8, 11);
  strokeWeight(1);
  noFill();


    if (sCount == 0) {
      sCount = 1;
    } else if( sCount == 1) { 
      sCount =0;
    }
   
    satu = 100;

if(sCount == 0){  stroke(100, satu, 100); }
else{ stroke(200, satu, 100); }

  pushMatrix();
  translate(width/3, height/2, 0);
  rotateY(rot1);
  sphere(size/2);
  popMatrix();



  pushMatrix();
  translate(2*(width/3), height/2, 0);
  rotateY(rot2);
  sphere(size/2);
  popMatrix();

  rot1 += PI/300;
  rot2 -= PI/300;
}