////
/*
Project: Final Project
Programmer: Andrew Meiners
Assigned: November 14th, 2019
Deadline: December 10th, 2019
Creation Date: November 18th, 2019
*/
////
/*
1. The sketch must have at least 3 classes in addition to the main program.
2. One of the classes must contain an array of objects of one of the other classes.
3. The program must have some type of interactive component using either the mouse or the keyboard.
4. The program must use map, rotation(2D or 3D), and vertex shape.
5. Use pushMatrix and popMatrix as needed.
6. You are encouraged to include the use test in some way.
7. The program may include the use of images in some way.
8. The program may use PShape, PFont, and PImage.
9. The program may use pixel operations.
10. This project must not simply recycle your previous work or examples provided by others!
*/
////
Mountainrange mountainrange;
Stars stars;
float numberofmountainranges;
float numberofstars;
float backgroundbluecolor;
PFont myFont;
////
void setup() {
  myFont = createFont("monospace",10);
  textFont(myFont);
  
  numberofmountainranges = 1;
  numberofstars = 100;
  
  frameRate(60);
  size(1000,500);
}
////
void draw() {
  background();
  instructions();
  mountainrange.show();
}
////
void background() {
  backgroundbluecolor = map(mouseX,0,1000,0,200);
  background(10,10,backgroundbluecolor);
}
////
void instructions() {
  fill(255);
  text("Instructions:",10,10);
  fill(255);
  text("Moving the mouse from the left side of the screen durings the backgound more blue",10,20);
}
////
