////
/*
       Lesson: Project02
   Programmer: Andrew Meiners
 Date Created: October 10, 2019
Date Modified: November 10, 2019
*/
/*
Program Requirements:
  1. The sketch must have at least 3 classes.
    >Classes for sketch are "Cloud","Clouds","Location" make a total of 3 classes.
  2. One of the clesses must contain an array of objects of on of the other classes. For example, the "Forest" class in "Array 
       Example 02" or the "Crowd" class in "Assignmnet 03 Example".
    >I used your Assignment 03 "Crowd" class as my example for "Clouds" class
  3. The program must have some type of interactive component using either the mouse or the keyboard.
    >The program has interactice components. For the program, the interactive components were chosen to the the keyboard in the actions list as 
       "cloudsclear", "cloudsneutral", and "cloudsrain".
  4. For an example using the mouse see "Object Example 03" and "Array Example 03".
    >I chose to incorperate keyboard presses rather than the mouse, out side of needing to click on the program to select
       the program and allow the keyboard presses to function as written.
  5. For an example using the keyboard see "Assignment 03 Example".
    >I chose to incorperate keyboard presses and used the given example provided as a good source of knowledge that aided
       in my ability to learn java.
*/
/*
I pledge that I have neither given nor received any unauthorized aid on this project
*/
////
Clouds clouds; //creates function from class "Clouds" 
boolean cloudsclear; //creates boolean for whether or not the cloudsclear is equal to true or false
boolean cloudsneutral; //creates boolean for whether or not the cloudsneutral object is equal to true or false
boolean cloudsrain; //creates the boolean for whether or not the cloudsrain object is equal to true or false
PFont myFont; //creates PFont object for text font of frames
////
void setup() { //setup window
  int numCloudsinframe = 20; //sets the "numCloudsinframe" object equal to an int being 5 for future statement
  int alt = 120; //sets the "alt" objects of the clouds in y position on the frame for future statement
    
  myFont = createFont("Courier Blod",12); //creates object "myFont" as the created font
  textFont(myFont); //uses command "textFont" on object "myFont"
   
  clouds = new Clouds(numCloudsinframe,alt); //creates new cloud object for future command use of "clouds.make()"
    
  cloudsclear = true; //sets cloudsclear to be a the true boolean
  cloudsneutral = false; //sets the cloudsnuetral to be the true boolean
  cloudsrain = false; //sets cloudsrain to be the true for the boolean.
    
  frameRate(30); //sets the frames per second rate per seconds
  size(640,320); //sets the size of the window created to show the frames
    
  clouds.make(); //makes the array of clouds
}
////
void draw() { //draw window
  Background(); //executes future void "Background"
  Instructions(); //executes future command "Instructions"
  if(cloudsclear) {
    clouds.cloudsclear();
  }
  else {
    clouds.show();
  }
  if(cloudsneutral) {
    clouds.cloudsneutral();
  }
  else {
    clouds.show();
  }
  if(cloudsrain) {
    clouds.cloudsrain();
  }
  else {
    clouds.show();
  }
}
////
void Background() { //creates void Background
  background(025,165,255); //sets the background color
  
  fill(100,255,100); //sets the color of the grass to be green
  rect(0,260,640,60); //sets the width and the height of the grass
  
  fill(165,42,42); //sets the color of the house to be brown
  rect(160,160,320,100); //sets the width and height of the building
  
  fill(205,42,42); //sets the color of the door to be a lighter brown to set different from house color 
  rect(300,200,40,60); //sets the width and height of the door
}
////
void Instructions() { //creats the void "Instructions"
  fill(0);
  text("Click on the program in order for the keyboard 'presses' to function, as listed below.",20,20); //creates the text at the corect x and y cordinates
  fill(0);
  text("Press 'c' to have a clear sky with no clouds",20,35);
  fill(0);
  text("Press 'n' to have the sky to be cloudy",20,50);
  fill(0);
  text("Press 'r' to have the clouds in the sky rain",20,65);
}
////
void keyPressed() { //creates the void for keyboard presses relative to executing a command and seting the booleans to either true or false
  if(key == 'c' || key == 'C') 
  { //sets keyboard command to execute based on either or not the 'c' on the keyboard is true or false
    cloudsclear = true; //sets the object boolean to be true
    cloudsneutral = false; //sets the object boolean to be false
    cloudsrain = false; //sets the object boolean to be false
    clouds.cloudsclear(); //executes object from clouds of class "Clouds" to set the clear of the skys being the color of the background
  }
  if(key == 'n' || key == 'N') 
  {
    cloudsclear = false;
    cloudsneutral = true;
    cloudsrain = false;
    clouds.cloudsneutral();
  }
  if(key == 'r' || key == 'R') 
  {
    cloudsclear = false;
    cloudsneutral = false;
    cloudsrain = true;
    clouds.cloudsrain();
  }
}
////
