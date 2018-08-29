//the class declaration
class rWalker {

  //declare variables here
  float pUp, pDown, pLeft, pRight;
  float xPos, yPos;

  //the constuctor  
  rWalker(float up, float down, float left, float right) {  
    //init variables here, you can parametize the constructor
    pUp = up;
    pDown = down;
    pLeft = left;
    pRight = right;
    xPos = width/2;
    yPos = height/2;
  }

  //write your methods, i.e. functions assocaited with a class
  void walk(float stepsize) {

    //write the method in here, you can parametize any method 
    //you can call on variables within the scope of this method
    rect(xPos, yPos, 10, 10);
    if (random(0, 1) > pUp) {
      yPos -= stepsize;
    }
    if (random(0, 1) < pDown) {
      yPos += stepsize;
    }
    if (random(0, 1) < pLeft) {
      xPos -= stepsize;
    }
    if (random(0, 1) < pRight) {
      xPos += stepsize;
    }
  }

  void keepInCanvas() {
    if (xPos > 1280) {
      xPos = 1280;
    } else if (xPos < 0) {
      xPos = 0;
    }
    if (yPos > 720) {
      yPos = 720;
    } else if (yPos < 0) {
      yPos=0;
    }
  }

void resetPos() {
    if (xPos > 1280 || xPos < 0 || yPos > 720 || yPos < 0) {
      xPos = width/2;
      yPos = height/2;
      
      //xPos = 540+random(0,200);
      //yPos = 260+random(0,200);
    }

  }
  
 // void colors(int c){
  //  if c
 // }
  //bracket to close class
}