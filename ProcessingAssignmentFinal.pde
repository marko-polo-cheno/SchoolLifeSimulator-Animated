//Mark Chen
//March 28 2018
//Processing project.
//This is a boring class simulator in which the user can 
//listen to a lecture, take notes or draw, or stare at the class' clock, waiting for class to end.

/*
Boring Class Simulator Description:
 First, the program will ask for the user's name, so it can be inscribed onto the desk.
 Program will open to normal setting, at a desk facing the lesson being taught.
 Press 2 to take notes or draw. Use the mouse to write on the paper.
 Press 3 to stare at the clock waiting for the class to finish.
 Press 1 at any time to return to the normal setting.
 */

/*
 -3 different shapes
 Quadrilaterals, rectangles, ellipses, triangles, lines, etc.
 -3 different colors
 Blue, light blue, brown, red, gray, black, white, green, etc.
 -1 Custom shape
 Computer screen - matches the png of the computer.
 Text bubble - the box contaning the teacher's speech.
 -6 Different elements
 Board, clock, paper, chalk, apple, text, computer, etc.
 -2 animated elements 
 Pong game displayed on the computer.
 Clock (mode 3).
 Blah blah blah text
 -User mouse control
 Draw on paper and only draws when mouse button is held down.
 -Use keyboard control
 Use numbers 1 2 and 3 to navigate between different modes/settings.
 -Comments on ‘Draw’ commands
 Ok
 -Comments on loops and ifs
 Ok
 -Prompts/ ease of use
 Relatively easy to use.
 Asks for user name for output.
 -Header
 Ok
 */

//Declare images, initial start up mode, user's name
PImage computerPic;
PImage pencil;
PImage teacher;
int mode = 1;
String name;

import javax.swing.JOptionPane; //We need to ask for input

//Initial setup of program
void setup() {
  background(220);
  size(1000, 600);
  smooth();

  //Load images and resize
  computerPic = loadImage("laptop.png");
  computerPic.resize(125, 110);

  teacher = loadImage("professor3.png");
  teacher.resize(160, 212);

  pencil = loadImage("pencil.png");
  pencil.resize(70, 200);

  //Asks user for their name
  name = JOptionPane.showInputDialog(null, "What's your name?");
  //If name is left blank, we call the person "Someone"
  if (name.equals("")) {
    name = "Someone ";
  }
}

//Draws every mode based on button pressed
void draw() {
  //Whatever the mode is, the draw function will draw the respective setting 
  if (mode == 1) {
    home();
    //fill(250, 30, 30);
    //stroke(20);
    //text(mouseX + "    " + mouseY, 840, 40); // Was used for establishing coordinates easily
  } else if (mode == 2) {
    paper();
    //This will enable drawing a line from previous dots/lines to the current mouse position
    lastPointx = mouseX;
    lastPointy = mouseY;
  } else if (mode == 3) {
    clock();
  }
}

void keyPressed() {
  //If the user presses number 1, 2, or 3, the mode will change and this will change what the draw function is drawing
  if (key == '1') {
    mode = 1;
  } else if (key == '2') {
    background(255);
    mode = 2;
  } else if (key =='3') {
    mode = 3;
  }
}
