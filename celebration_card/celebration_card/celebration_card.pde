//Global Variables
int appWidth, appHeight;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
PImage picBackground;
//String ; //All text variables as name=value pairs
//PFont ; //All fonts used
//color ; //colour palette & inks
int sizeFont, size; //Text Variables
//
//
void setup() {
  //Print & Println
  println("Hello World");
  println("Width:"+width, "\t", "Height:"+height);
  println("Display Width: "+displayWidth, "\tDisplay Height: "+displayHeight);
  //Character Escapes, tab, new
  //
  //fullScreen();
  size(900, 500);
  appWidth = width;
  appHeight = height;
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  picBackground = loadImage("../images used/eid.jpg");
  //fullScreen(); //displayWidth, displayHeight
  size( 900, 500 ); //Landscape
  // Copy Display Orientation
  appWidth = width;
  appHeight = height;
  //
  //Population
  //
  //DIVs
  //rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  //
  //
  //Population
  xRectBackground = appWidth*0;
  yRectBackground = appHeight*0;
  widthRectBackground = appWidth-1;
  heightRectBackground = appHeight-1;
  xRectQuit = appWidth*1/4;
  yRectQuit = appHeight*1/4;
  widthRectQuit = appWidth*1/2;
  heightRectQuit = appHeight*1/2;
  //
  //DIVs
  rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  //rect(); //Image, foreground, near the top
  //rect(); //Copy and Paste this for all rect()s
  //
} //End setup
//
void draw() {
  image( picBackground, xRectBackground, yRectBackground, widthRectBackground, heightRectBackground );
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
  //When mouse is pressed
  println("Mouse X: ", mouseX, "Mouse Y: ", mouseY);
  //
  if ( mouseX>xRectQuit && mouseX<xRectQuit+widthRectQuit && mouseY>yRectQuit && mouseY<yRectQuit+heightRectQuit ) exit();
  //
} //End mousePressed
//
//End MAIN Program
