PImage img;

void setup()
{
  size(800,600);
  img = loadImage("Moon_Lord.png");
}

void draw()
{
  imageMode(CENTER);
  image(img,width/2,height/2);
}  