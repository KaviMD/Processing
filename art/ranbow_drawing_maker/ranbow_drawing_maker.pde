void setup()
{
  size(1366,768);
  background(225);
}
void draw()
{
  //no code needed here
}

void mouseDragged()
{
  if(mouseButton == LEFT)
  {
    strokeWeight(10);
    stroke(random(255),random(255),random(255));
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}  
  
void mousePressed()
{
  if(mouseButton == RIGHT)
  {
    background(225);
  
  }
}  
  