PImage img;

void setup()
{
  size(800,600);
  img = loadImage("Moon_Lord.png");
}

void draw()
{
  //background(150);
  imageMode(CENTER);
  image(img,mouseX,mouseY);
}  