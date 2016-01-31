PFont myFont;

void setup()
{
  size(250,250);
  myFont = loadFont("BlackmoorLetPlain-48.vlw");
  
}

void draw()
{
  background(150);
  String myString = "I love my strings, even when they are in knots";
  textFont(myFont);
  textAlign(CENTER);
  textSize(30);
  fill(0,0,0);
  text(myString,10,height/4,180,200);
}  