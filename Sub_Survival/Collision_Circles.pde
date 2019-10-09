void setup() {
  size(700, 500);
    background(31, 97, 141);
    fill(0);
    rect(0, 0, width, 100);
  //the moon
  fill(245, 243, 206);
  ellipse(600, 45, 60, 60);
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
