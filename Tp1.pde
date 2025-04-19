PImage foto;

void setup(){

size(800,400);
background(100,200,50);

foto =loadImage("mifoto.jpeg");

}
void draw(){
image (foto,0,0,400,400);


//cuerpo
fill(0);
arc(610,300,220,300,0,PI);

//pelo
fill(40,25,7);
ellipse(600,170,250,300);

//mechonDER
fill(40,25,7);
rect(630,150,94,220);

//mechonIZQ
fill(40,25,7);
rect(475,150,94,220);

//cabeza
fill(234,207,154);
noStroke();
ellipse(600,200,190,270);

//cejaIZQ
fill(40,25,7);
ellipse(560,150,55,5);


///ojoIZQ
fill(255);
ellipse(560,180,30,20);
fill(0);
ellipse(560,180,20,20);

//cejaDER
fill(40,25,7);
ellipse(640,150,55,5);

///ojoDER
fill(255);
ellipse(640,180,30,20);
fill(0);
ellipse(640,180,20,20);

//nariz
fill(230,190,150);
ellipse(600,230,35,35);

//boca
fill(230,120,95);
ellipse(600,280,70,10);

fill(230,120,95);
ellipse(600,285,46,15);

}
