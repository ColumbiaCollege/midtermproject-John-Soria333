//clown fish object
class Fish1 {
  //properties
  float x;
  float y;
  String fishtype;

  //constructor
  Fish1() {
    x = 700;
    y = (random(100, height));
  }
  //starting position?

  //methods
  //displays it
  void display() {
    if (fishtype == "nemo") {
      drawclown();
    }
    if
  }
  void move() {
    x = x-3;
  }
  void reset() {
    if (x<0) {
      x=710;
      y=(random(100, height));
    }
  }
  void drawclown() {
    //fish boi(nemo)
    fill(225, 112, 0);
    //mainbody
    ellipse(x, y, 35, 20);
    //tail
    triangle(x+12, y, x+25, y-5, x+25, y+5);
    fill(0);
    //eye
    ellipse(x-9, y-3, 3, 5);
    //stripes
    //black
    fill(12, 12, 12);
    rect(x-4, y-9, 6, 18);
    rect(x+4, y-8, 6, 16);
    //white
    fill(252, 252, 252);
    rect(x-3, y-9, 3, 18);
    rect(x+5, y-8, 3, 16);
  }
}
