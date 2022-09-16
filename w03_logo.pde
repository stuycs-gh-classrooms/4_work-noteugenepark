size (300,300);
background (183,244,255); 

color red = color ( #D6133A );
color white = color ( 250);
color brown = color (#8E745E);
color yellow = color ( #F5EC34 );
stroke (brown); //rope
line (130,120,135,160);
line (170,120,165,160);

noStroke(); //balloon
fill (red);
ellipse(150, 100, 70, 80);
fill (white);
ellipse(150, 100, 50, 80);
fill (red);
ellipse(150, 100, 30, 80);
fill (white);
ellipse(150, 100, 10, 80);

fill (brown); //basket
quad (135,160,140,180,160,180,165,160);

fill (white); //clouds
circle(200, 250, 47);
circle(230, 250, 60);
circle(260, 250, 47);

circle(40, 200, 47);
circle(70, 200, 60);
circle(100, 200, 47);

circle(170, 10, 47);
circle(200, 10, 60);
circle(230, 10, 47);


fill (yellow); //sun
circle(10, 10, 90);
triangle ( 25, 70, 40, 75, 45 ,60); 
triangle ( 20, 70, 0, 70 ,10 ,80); 
triangle (47, 58, 64, 55, 60, 40); 
triangle (47, 58, 64, 55, 60, 40); 
triangle (63, 37, 67, 20, 78, 30);
triangle (66, 17, 66, -4, 78, 8);
