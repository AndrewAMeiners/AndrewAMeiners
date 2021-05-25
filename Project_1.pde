/*
       Lesson: Project 01
   Programmer: Andrew Meiners
 Date Created: September 24, 2019
Date Modified: September 24, 2019
*/

float red = 255;              // Default red
float green = 255;            // Default green
float blue = 255;             // Default blue

int Cx = 320;                 // Center lines x position

int HeadAx = 100;             // Default PersonA Head x position
int HeadAy = 240;             // Default PersonA Head y position

int HeadBx = 540;             // Default PersonB Head x position
int HeadBy = 240;             // Default PersonB Head y position

int HeadspeedA = 2;           // Default Speed of Heads
int HeadspeedB = -2;          // Default Speed of Head B

int CBx;

//////////////////////////////
// Requirements
// 1. The sketch must have at least 3 components in addition to the background.
// 2. Each component must be in a function that is called from draw().
// 3. At least one of the components must be animated, i.e., change position.
// 4. Use variables instead of all hard-coded values.
// 5. Use at least one for statement.
// 6. Use at least one if statement.
// I also creating a brand new sketch for this assigment.
// I pledge that I have neither given nor received any unauthorized aid on this assignment.
// This animation is about two persons in a lab room with a 3 dimensional cube that causes them to change heads.
//////////////////////////////
//Setup window
void setup()
{
  size(640, 480);
  frameRate(60);
  strokeWeight(4);
  stroke(255);
}

//////////////////////////////
//Draw Sketch (creating components using draw:requirement 2;using variables instead of all hard-coded values:requirement 4)
void draw()
{
  makeBackground();
  makePersonA();
  makePersonB();
  makeCube();
}

//////////////////////////////
//Draw Background (creating background:requirement 1)
void makeBackground() {  
  //Back Wall
  background(75);
  
  //Ground
  fill(150);
  rect(0, 360, 640, 120);
}

//////////////////////////////
//Draw PersonA (component 1:requirement 1;using at least one if statement:requirement 6;at least 1 compenent is animated:requirement 3) 
void makePersonA() {
  //PersonA
    //Change Color for Head
    if (frameCount == 100)
    {
      red = 0;
      green = 0;
      blue = 0;
    }

    //Head
    fill(red, green, blue);
    ellipse(HeadAx, HeadAy, 80, 80);   

    //Change Head location
    HeadAx = HeadAx + HeadspeedA;
    
    //Stop at new body
    if (HeadAx > 540)
    {
      HeadspeedA = 0;
    }
    
    //Head
    fill(red, green, blue);
    ellipse(HeadAx, HeadAy, 80, 80);    
    
    //Body
    line(100, 280, 100, 340);
    
    //Left Arm
    line(100, 280, 80, 310);
    
    //Right Arm
    line(100, 280, 120, 310);
    
    //Left Leg
    line(100, 340, 80, 370);
    
    //Right Leg
    line(100, 340, 120, 370);
    
}

//////////////////////////////
//Draw PersonB (component 2:requirement 1;using at least one if statement:requirement 6;at least 1 compenent is animated:requirement 3)
void makePersonB() {
  //PersonB
    //Change Color for Head
    if (frameCount == 100)
    {
      red = 0;
      green = 0;
      blue = 0;
    }
    
    //Head
    fill(red, green, blue);
    ellipse(HeadBx - 2, HeadBy, 80, 80);
    
    // change head location
    HeadBx = HeadBx + HeadspeedB;
    
    //head at new body
    if (HeadBx < 100)
       {
         HeadspeedB = 0;
       }

    
    //Body
    fill(255, 0, 0);
    line(540, 280, 540, 340);
    
    //Left Arm
    line(540, 280, 520, 310);
    
    //Right Arm
    line(540, 280, 560, 310);
    
    //Left Leg
    line(540, 340, 520, 370);
    
    //Right Leg
    line(540, 340, 560, 370);
}


//////////////////////////////
//Draw Cube (component 3:requirement 1; using at least one for statement:requirement 5)
void makeCube() {
  //FrontSide
    //FTop
    line(280, 240, 360, 240);
    
    //FRight
    line(360, 240, 360, 320);
    
    //FLeft
    line(280, 240, 280, 320);
    
    //FBottom
    line(280, 320, 360, 320);
    
   //TopSide
     //TLeft
     line(280, 240, 320, 200);
     
     //TTop
     line(320, 200, 400, 200);
     
     //TRight
     line(360, 240, 400, 200);
     
    //RightSide
      //RRight
      line(400, 200, 400, 280);
      
      //RBottom
      line(360, 320, 400, 280);
    //CenterSide
      //CTop
      for (int CTy = 280; CTy >= 205; CTy = CTy - 10) {
        line(320, CTy, 320, CTy - 5);
      }
      
      //CRight
      for (int CRx = 320; CRx <= 395; CRx = CRx + 10) {
      line(CRx, 280, CRx + 5, 280);
      }
      
      //CBottom
      CBx = 320;
      for (int CBy = 280; CBy <= 315; CBy = CBy + 10) {
          line(CBy, CBx, CBy + 5, CBx - 5);
          CBx = CBx - 10;
      }
}
