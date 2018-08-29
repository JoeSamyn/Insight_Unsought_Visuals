float zMap2() {  /* maps the elevation (z value) to each vertix,
              while also averaging its displayed value with all
              4 points next to it in the grid */
  float left; float right; float forw; float back;
  
  x2--; xBound2(); //x-1
  left = z2[x2][y2];
  
  x2++; xBound2(); x2++; xBound2();  //x+1+1
  right = z2[x2][y2];
  
  x2--; xBound2(); y2--; yBound2();  //x-1, y-1
  forw = z2[x2][y2];
  
  y2++; yBound2(); y2++; yBound2();  //y+1+1
  back = z2[x2][y2];
  
  y2--; yBound2(); //y-1
  
  return (z2[x2][y2] + left + right + forw + back)/5;
}