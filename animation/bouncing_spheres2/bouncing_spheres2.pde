int x1 = 400;
int grow1 = 2;
int x2 = 300;
int grow2 = 2;
int x3 = 200;
int grow3 = 2;


void setup()
{
  size(800,800);
  background(150);
  smooth();
}


void draw()
{
  fill(0,0,225);
  ellipse(x1,x1,x1,100);
  x1 = x1 + grow1;
  
  if((x1 >= width - 54) || (x1 <= 54))
  {
    grow1 = grow1 * -1;
  }
  
  fill(0,225,0);
  ellipse(x2,x2,x2,100);
  x2 = x2  + grow2;
  
  if((x2 >= width - 54) || (x2 <= 54))
  {
    grow2 = grow2 * -1;
  }
  
  fill(225,0,0);
  ellipse(x3,x3,x3,100);
  x3 = x3 + grow3;
  
  if((x3 >= width - 54) || (x3 <= 54))
  {
    grow3 = grow3 * -1;
  }  
}  