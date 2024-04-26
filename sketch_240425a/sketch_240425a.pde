
PImage fotito;

void setup(){
  background(255);
 size(800,400); 
  
fotito = loadImage ("paisaje.jpeg");

}

void draw(){
  
  image(fotito,0,0);
   
  
 //cielo
 fill(255,128,1);
 rect(400,0,400,200);
 
 //agua}}
 fill(62,95,140);
 rect(400,165,400,800);

  //sol
  fill(255,255,0);
  noStroke();
  ellipse(460,140,40,40);
   
  //muelle rectecha
 fill(141,73,37);
 rect(560,230,800,20);

//muelle mediovertical
fill(141,73,37);
  rect(560,230,100,180); 
  
  //muelletriizq
  fill(141,73,37);
  triangle(560,230,490,400,590,750);
  
  //muelletrider
  fill(141,73,37);
  triangle(760,500,590,400,655,230);
 
  
 }
