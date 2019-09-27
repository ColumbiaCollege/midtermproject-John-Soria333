class Fish2 {
  //properties
  float x;
  float y;
  
  //constructor
  Fish2(){
    x = 800;
    y = (random(100, height));
  }
  
  //methods
  //displays it
  void display(){
    //fish boi(salmon)
    fill(250,128,114);
    //mainbody
    ellipse(x,y,35,20);
    fill(251,166,156);
    ellipse(x,y,25,13);
    //tail
    fill(250,128,114);
    triangle(x+12,y,x+25,y-5,x+25,y+5);
    //eye
    fill(0);
    ellipse(x-9,y-3,3,5);
  }
  void move(){
    x = x-3;
  }
  void reset(){
    if (x<0){
      x=710;
      y=(random(100, height));
    }
  }
}
