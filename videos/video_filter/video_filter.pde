import processing.video.*;

Movie movie;

void setup()
{
  size(1366,768);
  //background(0);
  movie = new Movie(this,"Kavi.mov");
  movie.loop();
}

void draw()
{
  if(movie.available() == true)
  {
    movie.read();
  }
  //tint(0,0,225);
  filter(THRESHOLD);
  image(movie,0,0);
}  