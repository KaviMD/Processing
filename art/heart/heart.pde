void setup()
{
  size(250,250);
  background(100);
  noStroke();
}


void draw()
{
  fill(225,0,68);
  ellipse(105,116,90,90);
  ellipse(145,116,90,90);
  quad(190,125,125,100,60,125,125,240);
  println(mouseX + "," + mouseY);
}  