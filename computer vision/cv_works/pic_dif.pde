void picDiff() {
  face.loadPixels();
  if(keyPressed) {
      
    // Loop through every pixel column
    for (int x = 0; x < width; x++) {
      // Loop through every pixel row
      for (int y = 0; y < height; y++) {
        // Use the formula to find the 1D location
        int loc = x + y * width;
        gray_val = red(face.pixels[loc]);
        println(gray_val);
    /*
    for(int x = 0;x <= face.width;x++){
      for(int y = 0;y <= face.height;y++){
        loc = x + y*face.width; 
        gray = red(get(x,y));
        gray_val = red(face.pixels[loc]);
        println(gray_val);
        if((x == face.width) && (y == face.height))  {
          println("Scan complete");
          background(0);
        } */
      }    
    }     
  }        
}        