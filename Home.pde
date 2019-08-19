//This is the main and initial setting
//Mode 1

//Lesson Number generator from a random integer between 3 and 85, inclusive
int num = (int) random(3, 85);

void home() {
  background(200);
  frameRate(60); //Change back in case it is still 120 from paper drawing mode

  //The green chalk board
  stroke(130);
  strokeWeight(10);
  fill(40, 240, 40);
  rect(250, 156, 500, 180);
  
  //Chalk
  noStroke();
  fill(255);
  rect(269, 326, 22, 5);
  
  //Text on board
  stroke(255);
  strokeWeight(2);
  textSize(20);
  text("Class  #" + num, 289, 210);
  textSize(14);
  text("I am Dr.Dooshdoompinshumrpht,\nyour substitute teacher today.\nToday we will learn about eigen vectors.", 289, 257);
  
  //Display image of professor
  image(teacher, 690, 280);

  //Speech of professor
  fill(255);
  stroke(0);
  //Speech box
  beginShape();
  vertex(848, 356);
  vertex(863, 346);
  vertex(843, 346);
  vertex(843, 258);
  vertex(986, 258);
  vertex(986, 346);
  vertex(887, 344);
  vertex(848, 356);
  endShape();
  //Blah blah blah
  //Every second, a blah is added to the text box. If there are 3 blahs, in the next second, they will be erased into ...
  textSize(20);
  fill(0);
  if (second()%4 == 1) {
    text("Blah", 860, 300);
  } else if (second()%4 == 2) {
    text("Blah     Blah", 860, 300);
  } else if (second()%4 == 3) {
    text("Blah     Blah\n     Blah", 860, 300);
  } else {
    text ("...", 860, 300);
  }


  //Desk
  stroke(1);
  strokeWeight(2);
  fill(140, 70, 20);
  rect(-1, 550, 1002, 20);
  rect(-1, 450, 1002, 100);

  //Words on desk
  textSize(12);
  fill(0);
  text(name + " was  here !", 100, 565); //Remember? From the prompt at the beginning.

  //Unclear clock
  fill(240);
  ellipse(width/2, height/10, 50, 50);

  //Apple
  //Red circle
  fill(255, 0, 0);
  noStroke();
  ellipse(400, 480, 15, 15);
  //Stem
  fill(133, 50, 19);
  stroke(2);
  strokeWeight(3);
  line(400, 468, 406, 459);
  //Leaf
  noStroke();
  fill(30, 255, 30);
  ellipse(395, 465, 10, 5);

  //Paper
  fill(200);
  quad(230, 460, 300, 460, 258, 540, 188, 540);
  //Draws blue lines every 4 units down with the x-position slowly shifting to the right, because the paper is angled
  for (int x=1; x<=67; x+=4) {
    strokeWeight(1);
    stroke(30, 30, 255);
    line(222-x/2, 472+x, 291-x/2, 473+x);
  }

  computer(); //Calls the entire block of code relating to the computer on the desk
}
