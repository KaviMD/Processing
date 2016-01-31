void setup()
{
  size(200,200);
  background(100);
}  

void draw()
{
  stroke(0,0,225);
  strokeWeight(10);
  strokeCap(ROUND);
  line(25,25,174,25);
  
  stroke(0,225,0);
  strokeWeight(10);
  strokeCap(SQUARE);
  line(25,75,175,75);
  
  stroke(225,0,0);
  strokeWeight(10);
  strokeCap(PROJECT);
  line(25,125,175,125);
}  