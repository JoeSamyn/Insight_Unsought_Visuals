void xBound2() {  //constrains x to indexes of z[][] and loops value to the opposite edge
if (x2 == z2.length) {
      x2 = 0;
}
else if (x2 < 0) {
   x2 = z2.length-1;   
}
}