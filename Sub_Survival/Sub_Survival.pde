//John Soria
//Midterm Game
//declares the ship
Ship Montana;
//Object arraylist for Fish
ArrayList<Fish> school = new ArrayList<Fish>();
//establishes variables and boolean
int pmillis;
int tmillis;
int time;
boolean Loss = false;
//initializes beginning window
void setup() {
  size(700, 500);
  background(31, 97, 141);
  //night sky
  fill(0);
  rect(0, 0, width, 50);
  //declares that ship is new object of class Ship
  Montana = new Ship();
  //declares that school to add to makes new fish
  school.add(new Fish());
}

//begins draw loop
void draw() {
  //turns off stroke
  noStroke();
// timer
if (millis() - pmillis >= 7000) {
  // create a new fish in the game every 7 seconds
  school.add(new Fish());
  //resets pmillis to current time in order to "reset" timer
  pmillis = millis();
}
// second timer for displaying score
if (millis() - tmillis >=1000) {
  //adds to timer every second that passes
  time = time + 1;
  //resets tmillis to current time to "reset" timer
  tmillis = millis();
}
//happens only if you haven't lost
if (!Loss) {
  //wipe with ocean background
  background(31, 97, 141);
  //wipe with night sky
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
  for (Fish eachfish : school) {
    eachfish.move();
    eachfish.display();
    eachfish.reset();
    Montana.collide(eachfish);
  }
  //when you lose, gives a game over screen with final score
  if (Loss) {
    size(700, 500);
    background(31, 97, 141);
    fill(0);
    rect(0, 0, width, 100);
    //the moon
    fill(245, 243, 206);
    ellipse(600, 45, 60, 60);
    //game over window
    fill(245, 243, 206);
    rect(175, 125, 350, 250);
    textSize(40);
    fill(31, 97, 141);
    text("GAME OVER", 240, 200);
    textSize(25);
    text("Your score:", 290, 240);
    text(time, 335, 280);
  }
}
}
