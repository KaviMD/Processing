import ddf.minim.*;

Minim minim;
AudioPlayer song;

void setup()
{
  minim = new Minim(this);
  
  song = minim.loadFile("music.mp3");
  
  song.play();
}

void draw()
{
  ;
}