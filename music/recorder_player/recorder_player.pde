import ddf.minim.*;

Minim minim;
AudioInput mic;
//AudioRecorder left;
AudioRecorder right;
AudioSample Pright;
//AudioSample Pleft;

void setup()
{
  size(800,768);
  
  minim = new Minim(this);
  mic = minim.getLineIn();
  right = minim.createRecorder(mic,"data/right.au");
  //left = minim.createRecorder(mic,"data/left.wav");
} 

void draw()
{
  ;
}

void keyPressed()
{
  /*if(key == LEFT)
  {
    if(left.isRecording())
    {
      left.endRecord();
      left.save();
    }
    else
    {
      left.beginRecord();
    }   
  }*/
  
  if(key == RIGHT)
  {
    if(right.isRecording())
    {
      right.endRecord();
      right.save();
    }
    else
    {
      right.beginRecord();
    }   
  }
  if(key == UP)
  {
    Pright = minim.loadSample("right.au");
    Pright.trigger();
  }
  
  /*if(key == DOWN)
  {
    Pleft = minim.loadSample("left.wav");
    Pleft.trigger();
  }*/
}  