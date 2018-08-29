void regenerate2() {
  for (int yNew = 0; yNew < dataPoints2-1; yNew++) { 
    for (int xNew = 0; xNew < dataPoints2; xNew++) {
    
     z2[xNew][yNew] = z2[xNew][yNew+1];  //moves z to updated index
     }
  }
  for (int xNew = 0; xNew < dataPoints2; xNew++) {
      z2[xNew][dataPoints2-1] = (probabilityDistZ2(distPower2, randomizedElev2)+probabilityDistZ2(distPower2, randomizedElev2)+probabilityDistZ2(6*distPower2, 6*randomizedElev2))/3; //generates new randomized elevations for last index
  }
}