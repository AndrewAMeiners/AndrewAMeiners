////
class Star { //create class star
  float starpositionx;
  float starpositiony;
  
  Star(float starposx, float starposy) {
    starpositionx = starposx;
    starpositiony = starposy;
  }
  ////
  void show() {
    fill(200,0,200);
    noStroke();
    rect(5,5,10,10);
  
    fill(200,0,200);
    noStroke();
    rotate(45);
    rect(5,5,10,10);
  }
  ////
}
////
