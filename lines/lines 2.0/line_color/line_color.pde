//75 188
int x1 = 80;
int x2 = 180;
int y1 = 50;
int y2 = 200;

void setup()
{
  size(250,250);
  background(100);
}  

void draw()
{
  stroke(0,0,225);
  strokeWeight(15);
  line(x1,y1,x2,y2);
  println(mouseX,mouseY);
}  