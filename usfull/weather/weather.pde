JSONObject json;

PImage myImage;

PFont myFont;
PFont Font;

void setup()
{
  size(1366,768);
  background(0,215,225);
  update_data();
  myFont = loadFont("text20.vlw");
  Font = loadFont("STLibian-SC-Regular-70.vlw");
  /*JSONObject coord = json.getJSONObject("coord");
  float lon = coord.getFloat("lon");
  float lat = coord.getFloat("lat");
  println(lon + "," + lat);*/
  frameRate(1);
}  

void draw()
{
  textAlign(CENTER); 
  println(mouseX + "," + mouseY);
  textFont(myFont);
  textSize(20);
  fill(0);
  PImage myImage = loadImage("Downtown_Pittsburgh_from_the_North_Shore.png");
  image(myImage,0,0);
  text("GPS location: " + lat + " , " + lon,689,100);
  text("Sunrise: " + sunR,689,125);
  text("Sunset: " + sunS,689,150);
  text("Temperature: " + temp,689,175);
  text("Atmospheric pressure: " + pressure,689,200);
  text("Humidity: " + humidity + " % ",689,225);
  text("Wind Speed: " + windS + " mps ",689,250);
  text("Wind Direction: " + windD,689,275);
  text("Clould Coverage: " + cloud + "%",689,300);
  text("Conditions: " + condition + " , " + description,689,325);
  textFont(Font);
  textSize(70);
  text("Pittsburgh",689,50);
  if((minute() % 10 == 15) && (second() == 1))
  {
    update_data();
    
  }  
}  