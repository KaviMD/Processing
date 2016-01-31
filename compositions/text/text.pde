String my_string = "Something cool";
String a_string = "is going to happen, I promise!";
String my_other_string = " ";

void setup()
{
  size(250,250);
  my_other_string = my_string + " " + a_string;
  print(my_other_string);
  
}

void draw()
{
  text(my_other_string,125,125);
}  