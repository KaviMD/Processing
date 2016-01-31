import processing.video.*;

Movie movie;
Capture cam;

int frame = 0;
int num = 0001;
boolean record = false;
boolean start = false;
boolean r = false;

PImage replay;

void setup()
{
  String[] cameras = Capture.list();
  println("Available cameras");
  
  for(int i = 0; i < cameras.length; i++)
  {
    println(cameras[i]);
  }
  
  size(1366,768);
  background(0);
  
  movie = new Movie(this,"processing.mov");
  cam = new Capture(this,cameras[0]);
  movie.loop();
  cam.start();
  frameRate(120);
}

void draw()
{
  if(num != frame)
  {
    if(r == true)
    {
      if((num > 0) && (num < 10))
      {
        replay = loadImage("screen-000" + num + ".tif");
        image(replay,0,0,1366,768);
        num ++;
      }
      if((num > 9) && (num < 100))
      {
        replay = loadImage("screen-00" + num + ".tif");
        image(replay,0,0,1366,768);
        num ++;
      }
      if((num > 99) && (num < 1000))
      {
        replay = loadImage("screen-0" + num + ".tif");
        image(replay,0,0,1366,768);
        num ++;
      }
      if((num > 999) && (num < 10000))
      {
        replay = loadImage("screen-" + num + ".tif");
        image(replay,0,0,1366,768);
        num ++;
      }
    }
  }  
  if(record == true)
  {
    frame ++;
  }  
  if((movie.available() == true) && (cam.available() == true))
  {
    movie.read();
    cam.read();
  }
  image(cam,0,0,1366,768);
  if(start == true)
  {
  saveFrame();
  }
  //image(movie,0,height/4,width/2,height/2);
}

void keyPressed()
{
  if(key == 'p')
  {
    record = true;
    start = true;
  }
  if(key == 's')
  {
    record = false;
    start = false;
  }
  if(key == 'r')
  {
    r = true;
  }
}  