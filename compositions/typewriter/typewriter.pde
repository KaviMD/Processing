PFont myFont;
String myString = "";

void setup()
{
  size(1366,768);
  background(255);
  myFont = loadFont("BlackmoorLetPlain-48.vlw");
  
}

void draw()
{
  textFont(myFont);
  //textAlign(CENTER);
  //textSize(30);
  if(keyPressed)
  {
    myString = myString + key;
    delay(500);
  }  
  fill(0);
  text(myString,10,10,width,height);
}  