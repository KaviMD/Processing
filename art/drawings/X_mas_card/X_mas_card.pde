void setup()
{
  size(1100,850);
  background(25,220,525);
}

void draw()
{
  fill(225);
  noStroke();
  rect(0,700,1100,150);
  
  
  ellipse(550,600,225,225);
  ellipse(550,425,175,175);
  ellipse(550,300,100,100);
  
  
  fill(0);
  ellipse(530,280,10,10);  //left eye
  ellipse(550,280,10,10);  //right eye
  
  
  ellipse(550,400,10,10);  //top button
  ellipse(550,450,10,10);  //middle button
  ellipse(550,500,10,10);  //bottom button
  
  
  fill(225,150,0);
  triangle(525,300,530,310,485,310);
  
  
  stroke(100,15,15);
  strokeWeight(5);
  line(457,390,400,315);
  line(419,333,430,300);
  
  
  line(625,440,700,530);
  line(688,494,660,525);
  noLoop();
}  