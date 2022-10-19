//All three "graphs" will use these variables
int angle; //The degree angle we will use for sin() and cos() functions.
int dotDiameter;//The size of the circle that will be graphing.

int sinAmplitude;
int circRadius;
int spiralRadius;

void setup() {
  size(600, 600);
  background(0);
  dotDiameter = 4;
  sinAmplitude = 100;
  circRadius = 100;
  spiralRadius = 100;
  angle = 0;
  stroke(255);
}//setup

void draw() {
  //background(0);
  //sin curve
  drawSinCurve(angle, sinAmplitude, sinAmplitude);
  


  //circle
  drawCircle(angle, circRadius, width/2, sinAmplitude*2 + circRadius);
  //concentric circles
  drawCircle(angle, spiralRadius, width/2, sinAmplitude*2 + circRadius*3);
  if ((angle > 0) && (angle % 360 ==0)){
 spiralRadius -= dotDiameter * 2;
  }
  
  

  angle++;
}//draw


 int cx = 0;
 
void drawSinCurve(int degrees, int amplitude, int yOffset) {

 cx ++;
 yOffset +=  (amplitude * sin(radians (degrees)));
     circle (cx, yOffset,dotDiameter );

     
     if (angle>= width){
       cx = angle % width ;
     }//if
   
  }// drawSinCurve


void drawCircle(int degrees, int radius, int xOffset, int yOffset) {

  degrees ++;
circle (xOffset + radius * cos (radians (degrees)), yOffset + radius * sin (radians (degrees)), dotDiameter);

}//drawcircle

   
