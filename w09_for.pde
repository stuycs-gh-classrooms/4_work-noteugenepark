int radius, lineCount, circleCount;

void setup() {
  size(600, 400);
  
  lineCount = 5;
  drawGrid(lineCount);
  
  circleCount = 6;
  radius = 25;
int  diameter = radius * 2;
  circleRow(radius, height/2, circleCount, diameter);
}

void drawGrid(int numLines) {
  int distanceX = width/(numLines+1);
  int distanceY = height/(numLines+1);
  int x = distanceX;
  int y = distanceY;
  for (int count = 0; count < numLines; count = count + 1) {
    line(x, 0, x, height);
    line(0, y, width, y);
    x += distanceX;
    y += distanceY;
  } 
}

void circleRow(int startX, int startY, int numCircles, int d) {
  for (int count = 0; count < numCircles; count = count + 1) {
    circle(startX, startY, d);
    startX += d;
 }}
