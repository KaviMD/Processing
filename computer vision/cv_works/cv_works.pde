import processing.video.*;

PImage face;
int loc = 0;
float gray;
float gray_val;
boolean face_correct = false;

Capture cam;

void setup() {
  face = loadImage("me.jpg");
  String[] cameras = Capture.list();
  if (cameras == null) {
    println("Failed to retrieve the list of available cameras, will try the default...");
    cam = new Capture(this, 640, 480);
  } if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    printArray(cameras);
    cam = new Capture(this, cameras[0]);
    cam.start();
  }
  image(cam,0,0);
  //size(1280, 720);
  surface.setSize(face.width, face.height);
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  image(cam,0,0);
  filter(GRAY);
  picDiff();
  if(face_correct == true) {
    println("Face is correct");
  }
}