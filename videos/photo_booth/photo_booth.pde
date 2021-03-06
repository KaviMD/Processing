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
  
  size(1366,768);
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
  
  if(second()%10 == 0)
  {
    cam.stop();
    saveFrame();
    delay(10000);
    cam.start();
  }  
}