//Emelyn Gareca 91516/6
//comision2
//TP2 variables y condicionales

PFont fuente;
PImage imagen;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
int estado;
int botonY,botonX,botonAncho,botonAlto;

String texto1;
String texto2;
String texto3;
String texto4;
String texto5;
float miVariable;
//
void setup(){
  background(0);
  size(640,480);
  estado =1;
  fuente =loadFont("Castellar-48.vlw");
  textFont(fuente);
  textAlign(CENTER,CENTER);
  textSize(30);
  println(frameCount);
//
botonAncho=150;
botonAlto=50;
botonX=width/2-botonAncho/2;
botonY=height/2-botonAlto/2;

imagen=loadImage("imagen.jpg");
imagen2=loadImage("imagen2.jpg");
imagen3=loadImage("imagen3.jpg");
imagen4=loadImage("imagen4.jpg");
imagen5=loadImage("imagen5.jpg");

texto1 ="Street Fighter es\n una serie de videojuegos\n de lucha creada por una\n empresa japonesa capcom";
texto2 ="*El jugador controla a Ryu,\n un artista marcial\n oriundo de Japon para\n participar de un\n torneo mundial de\n artes marciales";
texto3 ="Donde el jugador\n debe peleear contra\n 10 oponentes de 5\n paises diferentes";
texto4 ="Ademas de que fue\n el primer juego de lucha\n donde los aficionados\n podian alegir a\n su personaje";
texto5= "MUCHAS   GRACIAS";
estado=1;
}
void draw(){
  println(frameCount/60+"/"+mouseX+"/"+mouseY);
  
  //estados
 
  
  
  if(estado ==1){
    image(imagen,0,0,640,480);
    
    if(frameCount/60>=6){
      frameCount=0;
      estado=2;
    }
  }
  //
  if(estado ==2){
    image(imagen2,0,0,640,480);
    text(texto1,320,240-frameCount/2);
    
    if(frameCount/60>=6){
      frameCount=0;
      estado=3;
    }
  }
  if(estado ==3){
    image(imagen2,0,0,640,480);
    text(texto2,320,240-frameCount/-2);
    
    if(frameCount/60>=6){
      frameCount=0;
      estado =5;
    }
  }
  if(estado ==5){
    image(imagen3,0,0,640,480);
    text(texto3,200,300-frameCount/2);
    
    if(frameCount/60>=6){
      frameCount=0;
      estado=6;
    }
  }
  
  if(estado ==6){
    image(imagen4,0,0,640,480);
    text(texto4,320,240-frameCount/2);
  textSize(30);
    if(frameCount/60>=6){
      frameCount=0;
      estado=7;
      
        if(estado ==7){
    image(imagen5,0,0,640,480);
    text(texto5,200,400);
    //
    rect(botonX,botonY,botonAncho,botonAlto);
    textSize(20);
    text (estado,botonX+400,botonY,450);
        }else if(estado==8){
  textSize(30);
    if(frameCount/60>=6){
      frameCount=0;
      estado=8;
      
    }
        }
    }
  }
}

void mousePressed(){
   if (mouseX > botonX && mouseX < botonX + botonAncho && mouseY > botonY && mouseY < botonY + botonAlto) {
    if (estado == 0) {
     estado = 1;
    } else {
      estado= 0;
    }
  }
}
  
 
