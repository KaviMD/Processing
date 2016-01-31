/*
  Andor Salga
  Chem
  Processing compliant
*/

import processing.opengl.*;

PFont font;
int amt = 50;
int sphereSize = 30;
float r = 0;
int cylinderDetail = 30;
int moleculeID = 0;
int type = 0;
float dist = 0;

void setup(){
  size(500,500,OPENGL);
  sphereDetail(25);
  noStroke();
  font = createFont("Arial",20);
}

void draw(){
  background(0);

  textSize(12);
  fill(255);
  text("Water", 430, 15);
  text("Carbon Dioxide", 377,35);
  text("Methane", 415, 55);


  textSize(30);
  if(type == 0){
    dist = 30;
    text("van der Waals Spheres", 30,30);
  }
  else if(type == 1){
    dist = 80;
    text("Ball-and-Stick", 30,30);
  }

  drawHUD();

  directionalLight(255,255,255,0,0,-1);
  noStroke();

  translate(width/2, height/2, 0);

  rotateY(mouseX/(float)width * PI*2);
  rotateX(mouseY/(float)height * PI*2);



// water
if(moleculeID == 0){
  fill(250,0,0);
  sphere(50);
  
  fill(255);
  pushMatrix();
    translate(dist,dist,0);
    sphere(30);
  popMatrix();

  fill(255);
  pushMatrix();
    translate(-dist,dist,0);
    sphere(30);
  popMatrix();

  if(type == 1){
    pushMatrix();
      rotateZ(PI/4);
      translate(0,120,0);
      drawCylinder();
    popMatrix();

    pushMatrix();
      rotateZ(-PI/4);
      translate(0,120,0);
      drawCylinder();
    popMatrix();

    // red cylinder
    fill(250,0,0);
    pushMatrix();
      rotateZ(PI/4);
      translate(0,70,0);
      drawCylinder();
    popMatrix();

    pushMatrix();
      rotateZ(-PI/4);
      translate(0,70,0);
      drawCylinder();
    popMatrix();
  }
}

// CO2
else if(moleculeID == 1){

  fill(250,0,0);
  sphere(50);
  
  fill(255);
  pushMatrix();
    translate(dist* 1.5,0,0);
    sphere(30);
  popMatrix();

  fill(255);
  pushMatrix();
    translate(-dist * 1.5,0,0);
    sphere(30);
  popMatrix();

  if(type == 1){
    pushMatrix();
      rotateZ(PI/2);
      translate(0,120,0);
      drawCylinder();
    popMatrix();

    pushMatrix();
      rotateZ(-PI/2);
      translate(0,120,0);
      drawCylinder();
    popMatrix();

      // red cylinder
      fill(250,0,0);
      pushMatrix();
        rotateZ(PI/2);
        translate(0,70,0);
        drawCylinder();
      popMatrix();

      pushMatrix();
        rotateZ(-PI/2);
        translate(0,70,0);
        drawCylinder();
      popMatrix();
    }
  }

// methane
else if(moleculeID == 2){
  fill(250,0,0);
  sphere(50);

   // red cylinder
   fill(250,0,0);
    pushMatrix();
      translate(0,70,0);
      drawCylinder();
    popMatrix();

    fill(250);
    pushMatrix();
      translate(0,120,0);
      drawCylinder();
      sphere(30);
    popMatrix();


   // red cylinder
   fill(250,0,0);
    pushMatrix();
      rotateZ(PI/3);
      translate(0,-30,0);
      drawCylinder();
    popMatrix();

    fill(250);
    pushMatrix();
      rotateZ(PI/3);
      translate(0,-80,0);
      drawCylinder();
      pushMatrix();
      translate(0,-60,0);
      sphere(30);
      popMatrix();
    popMatrix();

   // red cylinder
   fill(250,0,0);
    pushMatrix();
      rotateY(PI/3);      
      rotateZ(-PI/3);
      translate(0,-30,0);
      drawCylinder();
    popMatrix();

    fill(250);
    pushMatrix();
      rotateY(PI/3);
      rotateZ(-PI/3);
      translate(0,-80,0);
      drawCylinder();
      pushMatrix();
      translate(0,-60,0);
      sphere(30);
      popMatrix();
    popMatrix();


   // red cylinder
   fill(250,0,0);
    pushMatrix();
      rotateY(PI/3 *2 );      
      rotateZ(PI/3);
      translate(0,-30,0);
      drawCylinder();
    popMatrix();

    fill(250);
    pushMatrix();
      rotateY(PI/3 *2);
      rotateZ(PI/3);
      translate(0,-80,0);
      drawCylinder();
      pushMatrix();
      translate(0,-60,0);
      sphere(30);
      popMatrix();
    popMatrix();

  }
}

void drawCylinder(){
  for(float i=0; i < PI*2; i += PI*2/cylinderDetail){
    pushMatrix();
    translate(sin(i)*15,0,cos(i)*15);
    rotateY(i+0.2);
    rotateX(PI);
    rect(0,0,4,50);
    popMatrix();
  }
}

void drawHUD(){
  strokeWeight(2);
  stroke(255,0,0);
  fill(255);

  if(moleculeID == 0){fill(200,0,0);}
  rect(width-30,10,15,15);
  fill(255);

  if(moleculeID == 1){fill(200,0,0);}
  rect(width-30, 30, 15, 15);
  fill(255);

  if(moleculeID == 2){fill(200,0,0);}
  rect(width-30, 50, 15, 15);
  fill(255);
}

void mousePressed(){
  if(pointInRect(mouseX, mouseY, width-30, 10)){
    moleculeID = 0;
  }
  else if(pointInRect(mouseX, mouseY, width-30, 30)){
    moleculeID = 1;
  }
  else if(pointInRect(mouseX, mouseY, width-30, 50)){
    moleculeID = 2;
  }
}

void keyPressed(){
  if(type == 1){
    type = 0;
  }
  else if(type == 0){
    type =1;
  }
}

boolean pointInRect(int px, int py, int rx, int ry){
  if(px > rx && px < rx+15 && py > ry && py < ry+15){
    return true;
  }
  return false;
}