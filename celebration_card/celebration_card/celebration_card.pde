//Global Variables
String title="HAPPY EID!!";
color orange = #F74D0A;
int appWidth, appHeight;
float xRectBackground, yRectBackground, widthRectBackground, heightRectBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float xRectQuit, yRectQuit, widthRectQuit, heightRectQuit;
float xTitle, yTitle, widthTitle, heightTitle;
PImage picBackground;
//String ; //All text variables as name=value pairs
//PFont ; //All fonts used
//color ; //colour palette & inks
int sizeFont, size; //Text Variables
PFont titleFont;

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
  String up = "..";
  String open = "/";
  String imagesPath = up + open;
  String imagesUsed = "imagesUsed";
  picBackground = loadImage( imagesPath + imagesUsed + "/eid.jpg");
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
  //
  xRectQuit = appWidth*1/4;
  yRectQuit = appHeight*1/4;
  widthRectQuit = appWidth*1/2;
  heightRectQuit = appHeight*1/2;
  //
  xTitle = appWidth*1/4;
  yTitle = appHeight*1/10;
  widthTitle = appWidth*1/2;
  heightTitle= appHeight*2/10;
  //
  //DIVs
  //rect(xRectBackground, yRectBackground, widthRectBackground, heightRectBackground);
  //rect(xRectQuit, yRectQuit, widthRectQuit, heightRectQuit);
  rect(xTitle, yTitle, widthTitle, heightTitle); //Image, foreground, near the top
  //rect(); //Copy and Paste this for all rect()s
  //
  titleFont = createFont("Harrington", 55);
}//End setup
//
void draw() {
  image( picBackground, xRectBackground, yRectBackground, widthRectBackground, heightRectBackground );
  fill(orange); //ink
  textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [ LEFT | CENTER | RIGHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  size = 50;
  textFont(titleFont, size);
  text ( title, xTitle, yTitle, widthTitle, heightTitle );
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
