float zMap() {  /* maps the elevation (z value) to each vertix,
              while also averaging its displayed value with all
              4 points next to it in the grid */
  float left; float right; float forw; float back;
  
  x--; xBound(); //x-1
  left = z[x][y];
  
  x++; xBound(); x++; xBound();  //x+1+1
  right = z[x][y];
  
  x--; xBound(); y--; yBound();  //x-1, y-1
  forw = z[x][y];
  
  y++; yBound(); y++; yBound();  //y+1+1
  back = z[x][y];
  
  y--; yBound(); //y-1
  
  return (z[x][y] + left + right + forw + back)/5;
}