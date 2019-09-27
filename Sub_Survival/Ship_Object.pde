class Ship {
  //properties
  //x and y values of center of ship
  int x1;
  int y1;
  //decalres that booleans are false
  boolean left = false;
  boolean right = false;
  boolean up = false;
  boolean down = false;
  //constructor
  //makes the ship start in the center of screen
  Ship(){
    x1 = width/2;
    y1 = height/2;
  }
  
  //methods
  //makes ship move left if boolean is true
  void move(){
    if(left){
      x1 = x1-5;
    }
    //ditto, right
    if(right){
      x1 = x1+5;
    }
    //ditto, up
    if(up){
      y1 = y1-5;
    }
    //ditto, down
    if(down){
      y1 = y1+5;
    }
    //makes the booleans true if certain keys are pressed
    if (keyPressed == true) {
    if (key == 'a') {
    left = true;
    }
    if (key == 'd') {
      right = true;
    }
    if (key == 'w') {
      up = true;
    }
    if (key == 's') {
      down = true;
    }
    }
    //makes the booleans false if certain keys are not pressed
    else {
      left = false;
      right = false;
      up = false;
      down = false;
    }
  }
  
  void display(){
    //periscope
    fill(93, 109, 126);
    rect(x1+10, y1-40, 20, 8);
    rect(x1+10, y1-40, 8, 25);
    // main body
    ellipse(x1, y1, 80, 40);
    //light in periscope
    fill(247, 220, 111);
    ellipse(x1+32, y1-36, 5, 10);
    fill(0);
    // middle porthole
    ellipse(x1, y1, 12, 12);
    //left porthole
    ellipse(x1-20, y1, 12, 12);
    //right porthole
    ellipse(x1+20, y1, 12, 12);
  }
  //creates boundaries for the ship
  void boundaries(){
    //horizontal
    if (x1 < 40) {
    x1 = 40;
    }
    if (x1 > 660) {
      x1 = 660;
    }
    //vertical
    if (y1 < 120) {
      y1 = 120;
    }
    if (y1 > 480) {
      y1 = 480;
    }
  }
}
