

float rotation;
int shrink;
int sel;
int change;

//x and y are the coordinates of the center of the shape
//size is the pixel size of the largest circle
//steps is the number of circles that make up the shape
//speed is how fast it rotates, 1 is a good value to start at
//this function can accept up to 3 different colors in color 1-3
//a 1, 2 or 3 in colormode tells the function how many colors to include in the shape

void eye(int x, int y, int size, int steps, float speed, int color1, int color2, int color3, int colormode) {
  pushMatrix();
  translate(x, y);
  noStroke();

  change = (size-size/10)/(steps-1);

  for (int i = 0; i < steps; i++)
  {
    sel = i%colormode;
    if (sel == 0) {
      fill(color1, 100-(15*i)%75, 100);
    } else if (sel == 1) {
      fill(color2, 100-(15*i)%75, 100);
    } else if (sel == 2) {
      fill(color3, 100-(15*i)%75, 100);
    }
    pushMatrix();
    rotate(degrees(rotation*i));
    shrink = change*i;
    ellipse(0+((size-shrink)/2), 0, size-shrink, size-shrink);

    popMatrix();
  }
  rotation+=0.0001*speed;
  popMatrix();
}