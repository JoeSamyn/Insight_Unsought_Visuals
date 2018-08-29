void yBound() {  //constrains y to indexes of z[][] and loops value to the opposite edge
if (y == z.length) {
      y = 0;
}
else if (y < 0) {
   y = z.length-1;   
}
}