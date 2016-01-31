PImage img;
float r;

void setup() {
  size(1079, 716);
  img = loadImage("me.jpg");
  //image(img,1079,716);
  image(img,0,0);
  filter(GRAY);
}

void draw() {
  if(keyPressed)  {
    for(int x = 0;x <= 1079;x++){
      for(int y = 0;y <= 716;y++){
        //println(x + "," + y);
        r = red(get(x,y));
        println(r);
        if((x == 1079) && (y == 716))  {
          println("Scan complete");
          background(0);
       }
      }
    } 
  } 
}

