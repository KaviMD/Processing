import ddf.minim.*;

Minim minim;
AudioPlayer song;

PFont myFont;

void setup()
{
  size(500,400);
  
  minim = new Minim(this);
  
  song = minim.loadFile("music.mp3");
  
  song.play();
  
  
  myFont = loadFont("BlackmoorLetPlain-40.vlw");
}

void draw()
{
  background(10,26,193);
  noStroke();
  float pos = map(song.position(),0,song.length(),0,300);
  
  fill(0);
  text(song.position()/1000 + " out of " + song.length()/1000,width/2,height/2 + 80);
  
  fill(225);
  rect(100,160,300,70);
  fill(29,217,240);
  rect(100,160,pos,70); 
  
  textFont(myFont);
  textAlign(CENTER);
}

void keyPressed()
{
  if((key == 's'))
  {
    song.pause();
  }  
  
  if((key == 'p'))
  {
    song.play();
  }  
  if((key == 'r'))
  {
    song.rewind();
  }  
}