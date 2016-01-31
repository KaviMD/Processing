import ddf.minim.*;
Minim minim;
AudioPlayer song;

PImage maze;
PImage me;
String myString = "You Won";
PFont myFont;

int x = 329;
int y = 3;

int win = 0;

void setup()
{
  maze = loadImage("maze1.png");
  me = loadImage("kygore3.png");
  myFont = loadFont("BlackmoorLetPlain-200.vlw");
  
  size(645,646);
  
  minim = new Minim(this);
  song = minim.loadFile("marcus_kellis_theme copy.mp3");
  //smooth();
  
}

void draw()
{ 
  background(255);
  image(maze,0,0);
  noStroke();
  textFont(myFont);
  
  fill(224.);
  rect(0,655,1366,768);
  
  //filter(INVERT);
  float touch = red(get(x,y));
  
  //fill(random(225),random(225),random(225));
  fill(225,0,225);
  //delay(100);
  //scale(.001);
  image(me,x,y);
  //ellipse(x,y,3,3);
  
  println(mouseX + "," + mouseY);
  
  song.play();
  //song.loop();
  
  if(song.position() == song.length() - 1)
  {
    song.rewind();
  }  

  if((y >= 297) && (x >= 294) && (y >= 344) && (x <= 319))
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
    x = 329;
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
  
  