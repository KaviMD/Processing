import ddf.minim.*;

Minim minim;
AudioInput mic;

int x = 1;

void setup()
{
  size(500,300);
  
  minim = new Minim(this);
  mic = minim.getLineIn();
  
  frameRate(120);
  background(150);
}

void draw()
{
  stroke(0,abs(mic.left.get(0) * 1000),255);
  //stroke(0,0,225);
  line(x,(height - 20),x,abs((height - 20) - abs(mic.left.get(0) * 200)));
  x = x + 1;
  
  if(x >= width)
  {
    x = 0;
    background(150);
  }  
}