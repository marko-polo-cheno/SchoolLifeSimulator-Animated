//Draws a big clock for when user is "focusing on the clock" (mode 3)

void clock() {
  background(200);
  fill(255);
  stroke(0);

  //Declare the x and y postion, the center of the page, a coordinate for the clock to be
  int xPos = width/2;
  int yPos = height/2;

  //Draws the big circle centered on screen
  strokeWeight(3);
  ellipse(xPos, yPos, 290, 290);

  //Triangle points at 12
  fill(240, 30, 30);
  triangle(xPos-3, yPos-270, xPos, yPos-275, xPos+3, yPos-270);

  //Make a pi variable that stores pi, 3.14...
  float pi = (float)Math.PI;
  //Polar coordinates dont start a 12 o clock so we have to subtract pi/2 (90 degrees) to get it to start at 12
  //Scales from 0 to 60 evenly with 0 to 2 pi radians (or 360 degrees), so that each second in real life looks real on clock.
  float secondHand = map(second(), 0, 60, 0, 2 * pi) - pi/2;
  //Scales 0 to 60 minutes to a full circle and follows minutes in real time.
  float minuteHand = map(minute(), 0, 60, 0, 2*pi) - pi/2;
  //Scales 24 hours to a circle, but since we like 12-hour time vs 24-hour time, we scale from 0 to 12 and,
  //we get the remainder from dividing the time in hours by 12 because the range of the hour() function is 0 to 23.
  //And we don't want the hour hand to jump from 10 to 11 when it is 10:59, so we add on the minutes for smooth hour hand movement.
  //I didn't know how to make the hour hand smooth, so I googled it (just the norm() part).
  float hourHand = map(((hour()%12 + norm(minute(), 0, 60))), 0, 12, 0, 2*pi) - pi/2; 

  //From the origin, which is now the middle of the screen, we use the unit circle and math knowledge
  //to get the outer tips of the clock's hands multiplied by a certian factor respective to their sizes in length
  strokeWeight(1);
  line(xPos, yPos, 280 * cos(secondHand) + xPos, 280 * sin(secondHand) + yPos);  //Thin second hand
  strokeWeight(2);
  line(xPos, yPos, 240 * cos(minuteHand) + xPos, 240 * sin(minuteHand) + yPos);  //Medium minute hand
  strokeWeight(2.5);
  line(xPos, yPos, 180 * cos(hourHand) + xPos, 180 * sin(hourHand) + yPos);      //Small hour hand
}
