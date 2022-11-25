class Ball {

  int cx, cy;
  int xvelocity, yvelocity;
  int radius;

  color c = SAFE_COLOR ;

  //constructor
  Ball() {
    radius = 20;
    reset();
  }//default constructor

  void reset() {
    xvelocity = 0;
    yvelocity = 0;
    cx = int(random(radius, width-radius));
    cy = int(random(radius, height-radius));
  }//resetBall

  void display() {
    circle(cx, cy, radius * 2);
    fill(c);
  }//display

  void move() {
    if (cx <= radius || cx >= (width - 1 - radius)) {
      xvelocity*= -1;
    }//x bounce
    if (cy <= radius || cy >= (height - 1 - radius)) {
      yvelocity*= -1;
    }//x bounce
    cx+= xvelocity;
    cy+= yvelocity;
  }//moveBall

  void changeSpeed(int x, int y) {
    xvelocity+= x;
    yvelocity+= y;
  }//changeSpeed

  boolean onBall(int x, int y) {
    float d = dist(x, y, cx, cy);
    return d <= radius;
  }//onBall

  int getScoreValue() {
    int score = abs(xvelocity) + abs(yvelocity);
    return score;
  }//getScoreValue


void setColor (color newc){
  fill(newc);
}
  

boolean collisionCheck (Ball other){
  
  if ((dist (this.cx,this.cy,other.cx,other.cy) < this.radius*2) && this != other){
    return true;
  }
  else {
   return false; 
  }
    
  
  //reutrns true if the calling abll object and other are touching
  //check distance between the 2 ball objects
}
}//Ball
