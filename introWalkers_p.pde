void introWalkers_p(float input1, float input2){
 trails(20);
    for (int i = 0; i < randomWalkers.length; i++) {
      randomWalkers[i].walk(6);
      randomWalkers[i].resetPos();
      if (i<75) {
        fill(colorArray[3]);
      } else {
        fill(colorArray[5]);
      }
    }//end rWalkers

    xStart = map(input1, 0, 127, 100, width-100);
    prevPitch = currPitch;
    currPitch = int(input1);
    interval = int(currPitch - prevPitch);
    if (currPitch != prevPitch) {
      //println(interval);
      if (interval > 3 && interval < 7) { 
        introWalkers[object].isetup(xStart, height-100, 2);
      } else if (interval > 7) {
        introWalkers[object].isetup(xStart, height-100, 1);
      } else {
        introWalkers[object].isetup(xStart, height-100, 0);
      }
      object++;
      if (object== introWalkers.length) { 
        object = 0;
      }
      //println(currPitch, "yes");
    }

    for (int i = 0; i < introWalkers.length; i++) {
      //fill(colorArray[0]);

      introWalkers[i].walk(5);
    }//end intro walkers 11
    varience = 2.0;
    //println(varience);

    inputControl = input2; //PARAMETER 2 INPUT

    translate(width/2, height/2); //center of frame
    scale(map(inputControl, 0, 127, 1, 1.4));

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

    for (int i = 0; i < 1; i++) {
      scale(.8);

      if (i%4 == 0) {
        lineCol = colorArray[4];
      } else if ( i%4 == 1) {
        lineCol = colorArray[4];
      } else if (i%4 == 2) {
        lineCol = colorArray[4];
      } else if ( i%4 ==3) {
        lineCol = colorArray[4];
      }

      shapeMirroring();
    }
    popMatrix(); 
}