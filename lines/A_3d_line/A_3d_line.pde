int x1 = 80;
int x2 = 180;
int y1 = 80;
int y2 = 180;
PImage img;
int grow = 0;
int i = 0;


void setup()
{
  size(250,250);
  background(100);
  img = loadImage("1s_0s. jpg.jpg");
}  

void draw()
{
  /*if(grow == 1)
  {
    if(i != 71)
    {
      i++;
      x1--;
      x1--;
      x2++;
      x2++;
    }   
  }*/  
  
  println(mouseX+","+mouseY);
  
  tint(second()*4);
  imageMode(CENTER);
  image(img,width/2,height/2);
  
  stroke(0,0,225);
  line(x1,y1,x2,y2);
  strokeWeight(15);
  
  if((x1 >= 190))
  {
    grow = 1;
    
  }
  if((x1 <= 71))
  {
    grow = 0;
    
  } 
}

void keyPressed()
{
  if ((key == CODED) && (keyCode == RIGHT) && (grow == 0))
  {
    x1 --;
    x1 --;
    x2 ++;
    x2 ++;
    
  } 
    else if ((key == CODED) && (keyCode == RIGHT) && (grow == 1))
    {
      x1--;
      x1--;
      x2++;
      x2++;

    }
  
  if ((key == CODED) && (keyCode == LEFT) && (grow == 0))
  {
    x1 ++;
    x2 --;
    x1 ++;
    x2 --;
  }
    else if ((key == CODED) && (keyCode == LEFT) && (grow == 0))
    {
      x1 ++;
      x2 --;
      x1 ++;
      x2 --;
    }
  /*if((x1 <= 50) || (x2 >= 350));
  {
    x1 --;
    x2 ++;
    x3 ++;
    x4 --;
  }*/  
}