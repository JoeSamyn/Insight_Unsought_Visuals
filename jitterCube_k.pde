void jitterCube_k(float input1){
 trails(80);
    varience = 2.0;
    //println(varience);

    inputControl = map(input1, 0, 127, 0, 200); //PARAMETER 1 INPUT

    translate(width/2, height/2); //center of frame
    scale(map(inputControl, 0, 200, 1, 1.4));

    for (int i = 0; i < oneN.length; i++) {
      oneN[i] = oneN[i] + random(-sq(varience), sq(varience));
    }
    for (int i = 0; i < oneN.length; i++) {
      twoN[i] = twoN[i] + random(-sq(varience), sq(varience));
    }
    for (int i = 0; i < oneN.length; i++) {
      threeN[i] = threeN[i] + random(-sq(varience), sq(varience));
    }
    for (int i = 0; i < oneN.length; i++) {
      fourN[i] = fourN[i] + random(-sq(varience), sq(varience));
    }
    for (int i = 0; i < oneN.length; i++) {
      fiveN[i] = fiveN[i] + random(-sq(varience), sq(varience));
    }
    for (int i = 0; i < oneN.length; i++) {
      sixN[i] = sixN[i] + random(-sq(varience), sq(varience));
    }
    for (int i = 0; i < oneN.length; i++) {
      sevenN[i] = sevenN[i] + random(-sq(varience), sq(varience));
    }
    for (int i = 0; i < oneN.length; i++) {
      eightN[i] = eightN[i] + random(-sq(varience), sq(varience));
    }

    pushMatrix();


    //scale(2.5);

    for (int i = 0; i < 3; i++) {
      scale(.8);

      if (i%4 == 0) {
        lineCol = colorArray[5];
      } else if ( i%4 == 1) {
        lineCol = colorArray[3];
      } else if (i%4 == 2) {
        lineCol = colorArray[5];
      } else if ( i%4 ==3) {
        lineCol = colorArray[3];
      }

      shapeMirroring();
    }
    popMatrix(); 
}