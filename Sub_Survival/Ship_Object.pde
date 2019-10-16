class Ship {
  //properties
  //x and y values of center of ship
  int x1;
  int y1;
  //declares that booleans are false
  boolean left = false;
  boolean right = false;
  boolean up = false;
  boolean down = false;
  //These are hopefully going to enable diagonal movement when multiple keys
  //are pressed.
  //boolean upleft = false;
  //boolean upright = false;
  //boolean downleft = false;
  //boolean downright = false;
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
    //ditto, up left
    //if(upleft){
    //  //y1 = y1-5;
    //  //x1 = x1-5;
    //  up = true;
    //  left = true;
    //}
    //ditto, up right
    //if(upright){
    //  //y1 = y1-5;
    //  //x1 = x1+5;
    //  up = true;
    //  right = true;
    //}
    ////ditto, down left
    //if(downleft){
    //  //y1 = y1+5;
    //  //x1 = x1-5;
    //  down = true;
    //  left = true;
    //}
    ////ditto, down right
    //if(downright){
    //  //y1 = y1+5;
    //  //x1 = x1+5;
    //  down = true;
    //  right = true;
    //}
    //makes the booleans true if certain keys are pressed
    if (keyPressed == true) {
    if (key == 'a') {
    left = true;
    //x1 = x1-5;
    }
    else {
      left = false;
      //x1=x1+0;
    }
    if (key == 'd') {
      right = true;
      //x1 = x1+5;
    }
    else {
      right = false;
      //x1=x1+0;
    }
    if (key == 'w') {
      up = true;
      //y1=y1-5;
    }
    else {
      up = false;
      //y1=y1+0;
    }
    if (key == 's') {
      down = true;
      //y1=y1+5;
    }
    else {
      down = false;
      //y1=y1+0;
    }
    //if (key == 'a' ||'w')
  }
  // makes the booleans false if certain keys are not pressed
  else {
      left = false;
      right = false;
      up = false;
      down = false;
    }
  }
  //displays ship
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
  //if fish and ship collide, game over
  void collide(Fish fish){
    //fancy Joe trig
    float theta1 = atan2(fish.y - y1,fish.x - x1);
    float theta2 = atan2(y1 - fish.y ,x1 - fish.x);
    float radius1 = sqrt(sq(40*cos(theta1)) + sq(20*sin(theta1)));
    float radius2 = sqrt(sq(5*cos(theta2)) + sq(10*sin(theta2)));
    //if ship and fish touch, lose
    if(dist(x1,y1,fish.x,fish.y)<radius1+radius2){
      Loss=true;
    }
  }
}
