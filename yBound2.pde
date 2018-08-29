void yBound2() {  //constrains y to indexes of z[][] and loops value to the opposite edge
if (y2 == z2.length) {
      y2 = 0;
}
else if (y2 < 0) {
   y2 = z2.length-1;   
}
}