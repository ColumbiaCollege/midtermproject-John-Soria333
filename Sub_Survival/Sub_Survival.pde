//John Soria
//Objects (using ship)
//declares the ship
Ship Montana;
//Fish [] fishes;
// obejct array example or arraylist
ArrayList<Fish> school = new ArrayList<Fish>();
// Objects can be added to an ArrayList with add()
int pmillis;
int tmillis;
int time;
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
  school.add(new Fish());
  // check out millis for a timer
  time = 0;
}
//begins draw loop
void draw() {
  // timer
  if (millis() - pmillis >= 7000){
    // do a thing
    //println('s');
    school.add(new Fish());
    pmillis = millis();
  }
  // second timer for displaying
  if (millis() - tmillis >=1000){
    time = time + 1;
    tmillis = millis();
  }
  //wipe with ocean background and night sky
  background(31, 97, 141);
  fill(0);
  rect(0, 0, width, 100);
  //the moon
  fill(245, 243, 206);
  ellipse(600, 45, 60, 60);
  //displays timer
  textSize(20);
  text(time, 50, 50);
  
  //establishes the display, then move, then boundaries of the ship methods 
  Montana.display();
  Montana.move();
  Montana.boundaries();
  for (Fish eachfish : school){
    eachfish.move();
    eachfish.display();
    eachfish.reset();
  }
}
