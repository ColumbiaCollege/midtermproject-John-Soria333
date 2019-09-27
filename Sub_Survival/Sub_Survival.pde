//John Soria
//Objects (using ship)
//declares the ship
Ship Montana;
Fish1 Clown1;
Fish1 Clown2;
Fish1 Clown3;
Fish2 Salmon1;
Fish2 Salmon2;
Fish2 Salmon3;
Fish3 Trout1;
Fish3 Trout2;
Fish3 Trout3;

Fish [] fishes;
// obejct array example or arraylist

//initializes beginning window
void setup() {
  size(700, 500);
  background(31, 97, 141);
  //night sky
  fill(0);
  rect(0, 0, width, 50);
  noStroke();
  //declares that ship is new object of class Ship
  Montana = new Ship();
  Clown1 = new Fish1();
  Clown2 = new Fish1();
  Clown3 = new Fish1();
  Salmon1 = new Fish2();
  Salmon2 = new Fish2();
  Salmon3 = new Fish2();
  Trout1 = new Fish3();
  Trout2 = new Fish3();
  Trout3 = new Fish3();
  
}

//begins draw loop
void draw() {
  
  //wipe with ocean background and night sky
  background(31, 97, 141);
  fill(0);
  rect(0, 0, width, 100);
  //the moon
  fill(245, 243, 206);
  ellipse(600, 45, 60, 60);
  //establishes the display, then move, then boundaries of the ship methods 
  Montana.display();
  Montana.move();
  Montana.boundaries();
  Clown1.display();
  Clown1.move();
  Clown1.reset();
  Clown2.display();
  Clown2.move();
  Clown2.reset();
  Clown3.display();
  Clown3.move();
  Clown3.reset();
  Salmon1.display();
  Salmon1.move();
  Salmon1.reset();
  Salmon2.display();
  Salmon2.move();
  Salmon2.reset();
  Salmon3.display();
  Salmon3.move();
  Salmon3.reset();
  Trout1.display();
  Trout1.move();
  Trout1.reset();
  Trout2.display();
  Trout2.move();
  Trout2.reset();
  Trout3.display();
  Trout3.move();
  Trout3.reset();
}