int x1 = 260;  //top right
int x2 = 100;  //top left
int x3 = 150;  //bottom left
int x4 = 275;  //bottom right
int y1 = 15;
int y2 = 25;
int y3 = 195;
int y4 = 180;
PImage img;
int b = 0;
int g = 0;
int r = 0;
int grow = 0;


void setup()
{
  size(400,224);
}


void draw()
{
  img = loadImage("1s_0s.jpg");
  imageMode(CENTER);
  tint(second() * 4);
  image(img,width/2,height/2);
  noStroke();
  quad(x1,y1,x2,y2,x3,y3,x4,y4);
  println(mouseX + "," + mouseY);
  if((x2 <= 131) || (x1 >= 275))
  {
    grow = grow * -1;
  }  
  
}


void keyPressed()
{
  if ((key == CODED) && (keyCode == RIGHT))
  {
    if((x1 == x2))
    {
      x1 --;
      x2 ++;
      x3 ++;
      x4 --;
    }
    else if ((key == CODED) && (keyCode == RIGHT))
    {
      x1 ++;
      x2 --;
      x3 --;
      x4 ++;
    }
  }
  if ((key == CODED) && (keyCode == LEFT))
  {
    if((x1 == x2))
    {
      x1 ++;
      x2 --;
      x3 --;
      x4 ++;
    }
    else if ((key == CODED) && (keyCode == LEFT))
    {
      x1 --;
      x2 ++;
      x3 ++;
      x4 --;
    }
  }
  /*if((x1 <= 50) || (x2 >= 350));
  {
    x1 --;
    x2 ++;
    x3 ++;
    x4 --;
  }*/  
}
//println(mouseX + "," + mouseY);