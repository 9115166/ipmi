
//VARIABLES GLOBALES
PFont fuente;
PImage imagen;
PImage imagen2;
PImage imagen3;
PImage imagen4;

int estado;
int botonY;
int botonX;
int botonAncho;
int botonAlto;

String texto1;
String texto2;
String texto3;
String texto4;
String texto5;

void setup(){
 
  size(640,480);
  estado =1;
  fuente =loadFont("ProcessingSans-Bold-30.vlw");
  textFont(fuente);
  textAlign(CENTER,CENTER);
  textSize(30);
  
//BOTON DE REINICIO
botonAncho=150;
botonAlto=50;
botonX=width/2-botonAncho/2;
botonY=height/2-botonAlto/2;

imagen=loadImage("imagen.jpg");
imagen2=loadImage("imagen2.jpg");
imagen3=loadImage("imagen3.jpg");
imagen4=loadImage("imagen4.jpg");


texto1 ="Esta instalacion empleo una pantalla\n semicircular, un techo con espejos y niebla\n artificial para recrear la iluson de un sol.\n Marcos de aluminio revestidos con laminas\n de espejos se suspendieron del techo\n para crear un espejo gigante que duplicaba\n visualmente el volumen de la sala.";
texto2 ="Al caminar hasta el fondo de la sala,\n los visitantes podian ver como se construia\n el sol y el reverso de la estructura\n del espejo era visible desde la planta\n superior del museo.";
texto3 ="Retroiluminado por 200 luces aprox.\n el semicirculo y su reflejo, crearon\n la imagen de una hermosa puesta de sol\n en interiores, vista a traves de la nieve\n artificial emitida en la sala.";
texto4 ="Este proyecto creado por Olafur Eliasson,\n ubicado en el Turbine Hall de la Tate\n en Londres, seria la presencia masiva\n de un 'sol' artificial suspendido en el aire.";
texto5= "MUCHAS   GRACIAS";

}
void draw(){
   background(0);

//ESTADOS  
  if(estado ==1){
  image(imagen,0,0,640,480);
    
    if(frameCount/60>=2){
      frameCount=0;
      estado=2;
    }
  }
  
  if(estado ==2){
   image(imagen2,0,0,640,480);
    text(texto1,320,240-frameCount/2*2);
    
    if(frameCount/60>=6){
      frameCount=0;
      estado=3;
    }
  }
  
  if(estado ==3){
    image(imagen2,0,0,640,480);
    text(texto2,320,240-frameCount/-2);
    
    if(frameCount/60>=5){
      frameCount=0;
      estado =4;
    }
  }
  if(estado ==4){
    image(imagen3,0,0,640,480);
    text(texto3,320,240-frameCount/2);
    
    if(frameCount/60>=5){
      frameCount=0;
      estado=5;
    }
  }
  
  if(estado ==5){
    image(imagen4,0,0,640,480);
    text(texto4,320,240-frameCount/2);
  textSize(30);
    if(frameCount/60>=10){
      frameCount=0;
      estado=6;
    }
  }
      
        if(estado ==6){
    image(imagen,0,0,640,480);
    text(texto5,200,400);
    ///BOTON
    fill(0);
    rect(botonX,botonY,botonAncho,botonAlto);
    fill(255);
    textSize(30);
    text ("REINICIAR" ,botonX+botonAncho/2,botonY+botonAlto/2);
    
        }
        if(estado==7){
          textSize(30);
    if(frameCount/60>=6){
      frameCount=0;
      estado=0;
    }
        }
}
void mousePressed(){
  if(estado == 6 &&mouseX > botonX && mouseX < botonX + botonAncho && mouseY > botonY && mouseY < botonY + botonAlto) {
  frameCount= 0;
  estado=1;
    }
  }
  
 
 
