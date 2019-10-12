void gameover() {
  size(700, 500);
    background(31, 97, 141);
    fill(0);
    rect(0, 0, width, 100);
  //the moon
  fill(245, 243, 206);
  ellipse(600, 45, 60, 60);
  //game over window
  fill(255);
  rect(175, 125, 350, 250);
  textSize(40);
  fill(11, 0, 171);
  text("GAME OVER", 240, 200);
  textSize(25);
  text("Your score:", 290, 240);
  fill(0);
  text("450", 335, 280);
}
