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
     Classes for sketch are "Cloud","Clouds","Location" make a total of 3 classes.
  2. One of the clesses must contain an array of objects of on of the other classes. For example, the "Forest" class in "Array 
       Example 02" or the "Crowd" class in "Assignmnet 03 Example".
     I used your Assignment 03 "Crowd" class as my example for "Clouds" class
  3. The program must have some type of interactive component using either the mouse or the keyboard.
     The program has interactice components for the program was chosen to the the keyboard in the actions list as 
       "cloudsclear", "cloudsneutral", and "cloudsrain".
  4. For an example using the mouse see "Object Example 03" and "Array Example 03".
     I chose to incorperate keyboard presses rather than the mouse, out side of needing to click on the program to select
       the program and allow the keyboard presses to function as written.
  5. For an example using the keyboard see "Assignment 03 Example".
     I chose to incorperate keyboard presses and used the given example provided as a good source of knowledge that aided
       in my ability to learn java.
*/
/*
I pledge that I have neither given nor received any unauthorized aid on this project
*/
////
class Location { //creates the class "Location"
  
  int positionX; //creates the int "positionX"
  int positionY; //creates the int "positionY"
  
  Location(int posX, int posY)  { //not sure
    positionX = posX;
    positionY = posY;
  }
  ////
  int getXPosition() { //creates the int "getXPosition()"
    return positionX;
  }
  ////
  int getYPosition() { //creates the int "getYPosition()"
    return positionY;
  }
  ////
}
////
