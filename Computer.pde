//Screen if computer in mode 1

//Variables for ball movement
int radius = 5;
float x = 80;
float y = 458;
float speed = 0.5;
int directionX = 1;
int directionY = 1;

void computer() {
  //White computer image
  image(computerPic, 40, 418);

  //Black shape to match picture's computer's screen
  fill(0);
  beginShape();
  vertex(46, 443);
  vertex(112, 426);
  vertex(112, 462);
  vertex(54, 491);
  endShape();

  ellipseMode(RADIUS);

  //X-pos of ball which is restrained from 60<x<95.
  //When the ball reaches that restriction, it changes direction
  x+= speed*directionX;
  if ((x> 95)||(x<60)) {
    directionX = -directionX;
  }
  //Y-pos of ball which is restrained from 446<y<459.
  //When the ball reaches that restriction, it goes in the opposite direction
  y+= speed*directionY;
  if ((y> 459)||(y<446)) {
    directionY = -directionY;
  }
  
  //Display crappy Pong game
  //Ball
  fill(250, 0, 100);
  ellipse(x, y, radius, radius);
  //Rectangles - Paddles that follow y position of the ball
  fill(255);
  strokeWeight(0);
  rect(100, y-3, 3, 8);
  rect(50, y-3, 3, 9);
}
