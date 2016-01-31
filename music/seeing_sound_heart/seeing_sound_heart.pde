PImage img;

import ddf.minim.*;

Minim minim;
AudioInput mic;

void setup()
{
  size(1366,768);
  img = loadImage("heart.png");
  
  minim = new Minim(this);
  mic = minim.getLineIn();
}

void draw()
{
  imageMode(CENTER);
  pushMatrix();
  //tint(255,0,abs(mic.left.get(0) * 1000));
  scale(abs(mic.left.get(0) * 1000));
  image(img,633,354);
  popMatrix();
}  