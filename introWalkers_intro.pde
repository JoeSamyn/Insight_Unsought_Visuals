void introWalkers_intro(float input1){
  
  trails(20);
    xStart = map(input1, 0, 127, 100, width-100);
    prevPitch = currPitch;
    currPitch = int(input1);
    interval = int(currPitch - prevPitch);
    if (currPitch != prevPitch) {
      //println(interval);
      introWalkers[object].isetup(xStart, height-100, 0);
      object++;
      if (object== introWalkers.length) { 
        object = 0;
      }
      //println(currPitch, "yes");
    }

    for (int i = 0; i < introWalkers.length; i++) {
      //fill(colorArray[0]);

      introWalkers[i].walk(6);
    }
}