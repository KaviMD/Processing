int r = 10;
int g = 10;
int b = 10;


void setup()
{
  size(1366,768);
  background(225);
}
void draw()
{
  fill(r,g,b);
  noStroke();
  rect(0,0,100,12);
  fill(255);
  text((r + "," + g + "," + b),10,10);
  if(key == 'r')
  {
    r++;
    key = ' ';
    if(r > 255)
    {
      r = 0;
    }
  }  
  if(key == 'g')
  {
    g++;
    key = ' ';
    if(g > 255)
    {
      g = 0;
    }
  }  
  if(key == 'b')
  {
    b++;
    key = ' ';
    if(b > 255)
    {
      b = 0;
    }
  }  
}

void mouseDragged()
{
  strokeWeight(10);
  stroke(r,g,b);
  line(pmouseX,pmouseY,mouseX,mouseY);
}  