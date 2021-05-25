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
class Clouds 
{ //creates the class "Clouds"
  Cloud[] clouds; //creates the list "Clouds[]" in order for the cloud class objects to be imported into an array
  Location position; //sets the position of the original cloud
  
  int cloudCount; //creats an int label "cloudCountint"
  int alt; //creates the in label "alt" for the y position of the original cloud
  
  Clouds(int size, int yposition) { //not sure
    alt = yposition; //sets the "alt" int to be whatever yposition is
    cloudCount = size; //sets the "cloudCount" int to be set to whatever size is
    clouds = new Cloud[cloudCount];
  }
////
void make() 
{ //creates the void "make()"
  for(int count = 0; count < cloudCount; count++) { //starts a loop for the amount of clouds being created
    position = new Location((int) random(20,width), alt); //adds a new position for the new cloud that will be created and added to the "clouds[]" array
    clouds[count] = new Cloud(position);
   }
}
////
void show() 
{ //creats the void "show()"
  for(int count = 0; count < cloudCount; count++) { //starts a look to show the clouds created at each position
    clouds[count].show(); //executes clouds.show() command for all clouds in the clouds[] array
  }
}
////
void cloudsclear() 
{ //creates the void "cloudsclear()"
  for(int count = 0; count < cloudCount; count++) { //starts a look to show the clouds created at each position
    clouds[count].cloudsclear(); //executes clouds.cloudsclear() command for all the clouds in the clouds[] array
  }
}
////
void cloudsneutral() 
{ //creats the void "cloudsneutral()"
  for(int count = 0; count < cloudCount; count++) { //starts a look to show the clouds created at each position
    clouds[count].cloudsneutral(); //executes clouds.cloudsneutral() command for all the clouds in the clouds[] array
  }
}
////
void cloudsrain() 
{ //creates the void "cloudsclear()"
  for(int count = 0; count < cloudCount; count++) { //starts a look to show the clouds created at each position
    clouds[count].cloudsrain(); //executes clouds.cloudsrain() command for all the clouds in the clouds[] array
  }
}
////
}
////
