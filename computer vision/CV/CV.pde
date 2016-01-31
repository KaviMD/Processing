PImage img;
float r;
float g;
float b;

void setup() {
  size(1079, 716);
  img = loadImage("me.jpg");
  image(img,1079,716);
  set(0,0,img);
}

void draw() {
  if(keyPressed)  {
    for(int x = 0;x <= 1079;x++){
      for(int y = 0;y <= 716;y++){
        //println(x + "," + y);
        r = red(get(x,y));
        g = green(get(x,y));
        b = blue(get(x,y));
        println(r + "," + g + "," + b);
        if((x == 1079) && (y == 716))  {
          println("Scan complete");
          background(0);
       }
      }
    } 
  } 
}

