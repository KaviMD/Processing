void setup()
{
  size(250,250);
}

void draw()
{
  //background(150);
  pushMatrix();
  translate(mouseX,mouseY);
  fill(0,0,225);
  ellipse(0,0,25,25);
  ellipse(0,25,25,25);
  ellipse(0,50,25,25);
  popMatrix();
}  