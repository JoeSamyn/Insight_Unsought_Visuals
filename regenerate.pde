void regenerate() {
  for (int yNew = 0; yNew < dataPoints-1; yNew++) { 
    for (int xNew = 0; xNew < dataPoints; xNew++) {
    
     z[xNew][yNew] = z[xNew][yNew+1];  //moves z to updated index
     }
  }
  for (int xNew = 0; xNew < dataPoints; xNew++) {
      z[xNew][dataPoints-1] = (probabilityDistZ(distPower, randomizedElev)+probabilityDistZ(distPower, randomizedElev)+probabilityDistZ(6*distPower, 6*randomizedElev))/3; //generates new randomized elevations for last index
  }
}