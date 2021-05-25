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
int cloudsR;
int cloudsG;
int cloudsB;
int cloudsrainR;
int cloudsrainG;
int cloudsrainB;
int cloudx;
int cloudy;
int cloudsrainx;
int cloudsrainy;
////
class Cloud { //creats the class "Cloud"
  Location location; //creates a location object function from the Location class to be used as the x and y positions of the clouds

  Cloud(Location position) 
  { //creates and executes Cloud function using objects of future commands
    location = new Location(position.getXPosition(), position.getYPosition()); //sets the location object to be equal to the output of the "Location()" command getting the x and y position of the clouds
  }
  ////
  void show() { //creats the void "show()"
    
    noStroke(); //sets there to be no outline for shapes created
    fill(cloudsR,cloudsG,cloudsB); //sets the color of the cloud
    ellipse(location.getXPosition(),location.getYPosition(),30,30); //creates an ellipse to be part of the cloud
    
    noStroke(); //sets there to be no outline for shapes created
    fill(cloudsR,cloudsG,cloudsB); //sets the color of the cloud
    ellipse(location.getXPosition()+10,location.getYPosition()-20,30,30); //creates an ellipse to be part of the cloud off from the original ellipse
    
    noStroke(); //sets there to be no outline for shapes created 
    fill(cloudsR,cloudsG,cloudsB); //sets the color of the cloud
    ellipse(location.getXPosition()+20,location.getYPosition(),30,30);
    
    noStroke(); //sets there to be no outline for shapes created
    fill(cloudsR,cloudsG,cloudsB); //sets the color of the cloud
    ellipse(location.getXPosition()+30,location.getYPosition()-20,30,30);
    
    noStroke(); //sets there to be no outline for shapes created
    fill(cloudsR,cloudsG,cloudsB); //sets the color of the cloud
    ellipse(location.getXPosition()+40,location.getYPosition(),30,30);
    
    noStroke(); //sets there to be no outline for shapes created
    fill(cloudsrainR,cloudsrainG,cloudsrainB); //sets the color of the rain
    rect(location.getXPosition()-5,location.getYPosition()+20,2,15); //creates the rectange for the rain
    
    noStroke(); //sets there to be no outline for shapes created
    fill(cloudsrainR,cloudsrainG,cloudsrainB); //sets the color of the rain
    rect(location.getXPosition()+5,location.getYPosition()+20,2,15); //creates the rectange for the rain
    
    noStroke(); //sets there to be no outline for shapes created
    fill(cloudsrainR,cloudsrainG,cloudsrainB); //sets the color of the rain
    rect(location.getXPosition()+15,location.getYPosition()+20,2,15); //creates the rectange for the rain
  
    noStroke(); //sets there to be no outline for shapes created
    fill(cloudsrainR,cloudsrainG,cloudsrainB); //sets the color of the rain
    rect(location.getXPosition()+25,location.getYPosition()+20,2,15); //creates the rectange for the rain
    
    noStroke(); //sets there to be no outline for shapes created
    fill(cloudsrainR,cloudsrainG,cloudsrainB); //sets the color of the rain
    rect(location.getXPosition()+35,location.getYPosition()+20,2,15); //creates the rectange for the rain
  
    noStroke(); //sets there to be no outline for shapes created
    fill(cloudsrainR,cloudsrainG,cloudsrainB); //sets the color of the rain
    rect(location.getXPosition()+45,location.getYPosition()+20,2,15); //creates the rectange for the rain
  }
  ////
  void cloudsclear() 
  { //creates the void "clear()"
    cloudsR = 025; //sets the red variable of the clouds
    cloudsG = 165; //sets the green variable of the clouds
    cloudsB = 255; //sets the blue variabel of the clouds
    cloudsrainR = 025; //sets the red variable of the rain
    cloudsrainG = 165; //sets the green variable of the rain
    cloudsrainB = 255; //sets the blue variable of the rain
  }
  ////
  void cloudsneutral() 
  { //creates the void "neutral()"
    cloudsR = 255; //sets the red variable of the clouds
    cloudsG = 255; //sets the green variable of the clouds
    cloudsB = 255; //sets the blue variabel of the clouds
    cloudsrainR = 025; //sets the red variable of the rain
    cloudsrainG = 165; //sets the green variable of the rain
    cloudsrainB = 255; //sets the blue variable of the rain
  }
  ////
  void cloudsrain() 
  { //creats the void "rain()"
    cloudsR = 255; //sets the red variable of the clouds
    cloudsG = 255; //sets the green variable of the clouds
    cloudsB = 255; //sets the blue variabel of the clouds
    cloudsrainR = 000; //sets the red variable of the rain
    cloudsrainG = 000; //sets the green variable of the rain
    cloudsrainB = 255; //sets the blue variable of the rain
  }
  ////
}
////
