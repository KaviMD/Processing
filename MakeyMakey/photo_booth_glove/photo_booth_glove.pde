import processing.video.*;

Capture cam;

void setup()
{
  String[] cameras = Capture.list();
  println("Available cameras");
  
  for(int i = 0; i < cameras.length; i++)
  {
    println(cameras[i]);
  }
  
  size(1366,786);
  background(0);
  
  cam = new Capture(this,cameras[0]);
  
  cam.start();
}

void draw()
{
  if((cam.available() == true))
  {
    cam.read();
  }
  image(cam,0,0,width,height);
}

void keyPressed()
{
  if(key == ' ')
  {
    cam.stop();
    saveFrame();
    fill(0,0,0);
    rect(0,0,1366,786);
    delay(100);
    cam.start();
  } 
}  
  
  
  
  
  