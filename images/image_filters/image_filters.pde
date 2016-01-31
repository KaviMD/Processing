PImage img;

void setup()
{
  size(800,600);
  img = loadImage("Moon_Lord.png");
}

void draw()
{
  background(150);
  imageMode(CENTER);
  image(img,width/2,height/2);
  /*filter(THRESHOLD);
  filter(GRAY);
  filter(INVERT);
  filter(POSTERIZE,4);
  filter(BLUR,2);
  filter(ERODE);
  filter(DILATE);*/
}  