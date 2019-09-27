class Fish3 {
  //properties
  float x;
  float y;
  
  //constructor
  Fish3(){
    x = 900;
    y = (random(100, height));
  }
  
  //methods
  void display(){
    //fish boi (trout)
    fill(144,139,139);
    //mainbody
    ellipse(x,y,35,20);
    fill(163,162,162);
    ellipse(x,y,25,13);
    //tail
    fill(144,139,139);
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
