void setup()
{
  size(250,250);
}

void draw()
{
  pushMatrix();
  translate(width/2,height/2);
  fill(0,0,225);
  ellipse(0,0,25,25);
  ellipse(0,25,25,25);
  ellipse(0,50,25,25);
  popMatrix();
}  