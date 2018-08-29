void xBound() {  //constrains x to indexes of z[][] and loops value to the opposite edge
if (x == z.length) {
      x = 0;
}
else if (x < 0) {
   x = z.length-1;   
}
}