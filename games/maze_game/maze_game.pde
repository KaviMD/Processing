import ddf.minim.*;
Minim minim;
AudioPlayer song;

PImage maze;
String myString = "You Won";
PFont myFont;

int x = 536;
int y = 3;

int win = 0;

void setup()
{
  maze = loadImage("maze.png");
  myFont = loadFont("BlackmoorLetPlain-200.vlw");
  
  size(1089,635);
  
  minim = new Minim(this);
  song = minim.loadFile("marcus_kellis_theme copy.mp3");
  //smooth();
  
}

void draw()
{ 
  background(255);
  image(maze,-18,-19);
  noStroke();
  textFont(myFont);
  
  fill(224.);
  rect(0,655,1366,768);
  
  //filter(INVERT);
  float touch = red(get(x,y));
  
  //fill(random(225),random(225),random(225));
  fill(225,0,225);
  //delay(100);
  
  ellipse(x,y,3,3);
  
  println(mouseX + "," + mouseY);
  
  song.play();
  //song.loop();
  
  if(song.position() == song.length()-1)
  {
    song.rewind();
  }  

  if(y > 635)
  {
    song.rewind();
    background(225);
    fill(0);
    textAlign(CENTER);
    textSize(200);
    text(myString,526,356);
    win = 1;
  }  
  if((touch < 255) && (win == 0))
  {
    x = 536;
    y = 3;
  }
  
}

void keyPressed()
{
  if((key == CODED) && (keyCode == UP))
  {
    y--;
    y--;
  }
  if((key == CODED) && (keyCode == DOWN))
  {
    y++;
    y++;
  } 
  if((key == CODED) && (keyCode == RIGHT))
  {
    x++;
    x++;
  } 
  if((key == CODED) && (keyCode == LEFT))
  {
    x--;
    x--;
  }
  if((key == 'r'))
  {
    song.rewind();
  }    
}  
  
  