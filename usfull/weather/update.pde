///coords
float lon;
float lat;

//sunrise + sunset
int sunR;
int sunS;

//main
float temp;
float pressure;
int humidity;

//wind speed + direction
float windS;
float  windD;

//cloud
int cloud;

//weather
int ID;
String condition;
String description;
String icon;
PImage weatherIcon;

void update_data()
{ 
  json = loadJSONObject("http://api.openweathermap.org/data/2.5/weather?q=Pittsburgh,PA&appid=2de143494c0b295cca9337e1e96b00e0");
  println(json);
  
  JSONObject coord = json.getJSONObject("coord");
  lon = coord.getFloat("lon");
  lat = coord.getFloat("lat");
  
  JSONObject sys = json.getJSONObject("sys");
  sunR = sys.getInt("sunrise");
  sunS = sys.getInt("sunset");
  
  JSONObject main = json.getJSONObject("main");
  temp = main.getFloat("temp");
  pressure = main.getFloat("pressure");
  humidity = main.getInt("humidity");
  
  JSONObject wind = json.getJSONObject("wind");
  windS = wind.getFloat("speed");  
  windD = wind.getFloat("deg");
  
  JSONObject clouds = json.getJSONObject("clouds");
  cloud = clouds.getInt("all");
  
  JSONArray weather = json.getJSONArray("weather");
  JSONObject mainCond = weather.getJSONObject(0);
  ID = mainCond.getInt("id");
  condition = mainCond.getString("main");
  description = mainCond.getString("description");
  icon = mainCond.getString("icon");
  
  PImage weatherIcon = loadImage("http://openweathermap.org/img/w/" + icon + ".png");
  //image(weatherIcon,50,350);
}  