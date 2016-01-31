int x = 300;
int y = 300;

void setup()
{
  size(600,600);
}

void draw()
{
  fill(0,0,225);
  background(150);
  noStroke();
  ellipse(x,y,50,50);
}

void keyPressed()
{
  if((key == CODED) && (keyCode == UP))
  {
    y--;
  }
  if((key == CODED) && (keyCode == DOWN))
  {
    y++;
  } 
  if((key == CODED) && (keyCode == RIGHT))
  {
    x++;
  } 
  if((key == CODED) && (keyCode == LEFT))
  {
    x--;
  }
}  
  
  