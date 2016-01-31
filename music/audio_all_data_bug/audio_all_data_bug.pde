import ddf.minim.*;
Minim minim;

AudioPlayer song;
AudioMetaData data;

PFont myFont;

void setup()
{
  size(500,400);
  myFont = loadFont("BlackmoorLetPlain-20.vlw");
  minim = new Minim(this);
  data = song.getMetaData();
  song = minim.loadFile("Naughty.mp3");
  song.play();
}
void draw()
{
  background(10,26,193);
  noStroke();
  float pos = map(song.position(),0,song.length(),0,300);
  text(data.title(),width/2,55);
  text(data.author(),width/2,70);
  text(data.album(),width/2,85);
  

  
  fill(0);
  text(song.position()/1000 + " out of " + song.length()/1000,width/2,height/2 + 80);
  
  fill(225);
  rect(100,160,300,70);
  fill(29,217,240);
  rect(100,160,pos,70); 
  
  textFont(myFont);
  textAlign(CENTER);
  textSize(20);
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