//clown fish object
class Fish {
  //properties
  float x;
  float y;
  String fishtype;
  //constructor
  Fish() {
    x = 700;
    y = (random(100, height));

    //starting position?
    int integer = int(random(1, 4));
    //int integer = int number;
    if (integer==1) {
      fishtype="Clown";
    }
    if (integer==2) {
      fishtype="Salmon";
    }
    if (integer==3) {
      fishtype="Trout";
    }
  }

  //methods
  //displays it
  void display() {
    if (fishtype == "Clown") {
      drawclown();
    }
    if (fishtype == "Salmon") {
      drawsalmon();
    }
    if (fishtype == "Trout") {
      drawtrout();
    }
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
  void drawsalmon() {
    //fish boi(salmon)
    fill(250, 128, 114);
    //mainbody
    ellipse(x, y, 35, 20);
    fill(251, 166, 156);
    ellipse(x, y, 25, 13);
    //tail
    fill(250, 128, 114);
    triangle(x+12, y, x+25, y-5, x+25, y+5);
    //eye
    fill(0);
    ellipse(x-9, y-3, 3, 5);
  }
  void drawtrout() {
    //fish boi (trout)
    fill(144, 139, 139);
    //mainbody
    ellipse(x, y, 35, 20);
    fill(163, 162, 162);
    ellipse(x, y, 25, 13);
    //tail
    fill(144, 139, 139);
    triangle(x+12, y, x+25, y-5, x+25, y+5);
    //eye
    fill(0);
    ellipse(x-9, y-3, 3, 5);
  }
}
