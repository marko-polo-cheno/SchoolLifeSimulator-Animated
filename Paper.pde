//Declare 2 variables that will represent the last position of mouse
//so the program will connect dot to dots with the mouse to from a line following the mouse
int lastPointx;
int lastPointy;

void paper() {
  //Increased frame rate for smoother drawings
  frameRate(120);
  //Pencil that follows mouse ==> failed
  //image(pencil,mouseX,mouseY-200);

  //Paper
  //Outline of the paper
  strokeWeight(2);
  stroke(160);
  line(250, 50, 750, 50);
  line(250, 50, 250, 601);
  line(750, 50, 750, 601);
  //Brown desk around the paper made by 3 rectangles
  noStroke();
  fill(140, 70, 20);
  rect(0, 0, 250, 600);
  rect(250, 0, 500, 50);
  rect(750, 0, 250, 600);

  //Draw blue horizontal lines
  stroke(120, 120, 255);
  //Draw a blue line every 18 pixels down from the previous one starting from a quarter of the width to 3 quarters
  for (int x = 7; x<40; x++) {
    line(width/4, x*18, width/4*3, x*18);
  }

  //Draw red vertical line, just like the one on most lined sheets of paper
  stroke(200, 30, 30);
  line(320, 60, 320, 601);

  //Draw with pencil in range of paper
  if ((mouseX>250)&&(mouseX<750)&&(mouseY<605)&&(mouseY>60)) {
    //If the mouse is in range, and is pressed, then the colour is that of a pencil, otherwise, there is no colour.
    if (mousePressed) {
      stroke(100);
      fill(0);
      strokeWeight(2);
    } else {
      noStroke();
      noFill();
    }
    //Draws a line from the past point to the current point.
    line(mouseX, mouseY, lastPointx, lastPointy);
    //Reset the last point to the new point that the mouse is on right now.
    lastPointx = mouseX;
    lastPointy = mouseY;
  }
}
