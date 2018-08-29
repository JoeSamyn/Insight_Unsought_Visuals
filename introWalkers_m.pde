void introWalkers_m(float input1){
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
    }//end intro walkers scene 10 
}