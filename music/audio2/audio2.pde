import ddf.minim.*;

Minim minim;
AudioPlayer song;

void setup()
{
  minim = new Minim(this);
  
  song = minim.loadFile("marcus_kellis_theme copy.mp3");
  
  song.play();
}

void draw()
{
  ;
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