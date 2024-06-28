
PImage ilusion;
float dureza;
float r,g,b;
int estado=0;
int contador;
int espacio;

void setup(){
size(800,400);
ilusion = loadImage("ilusion.jpeg");
dureza=0;
r=100;
g=200;
b=300;
contador=0;
espacio=18;
}

void draw(){
  if(frameCount%60==0){
    contador++;
  }
  if(estado==0){
    background(100,200,300);
    
    if (mouseX>400 && mouseX<800 && mouseY>0 &&mouseY<400){
      float centro= dist(width/2+200,height/2,mouseX,mouseY);
      float cambiodevalor= map(centro,0,200,0,255);
      noStroke();
      fill(cambiodevalor,g,b);
      rect(width/2,0,400,400);
    }else{
      fill(r,g,b);
      noStroke();
    }
    //
    push();
    fill(0,dureza);
    rectMode(CENTER);
    rect(width/2+200,height/2,400,400);
    pop();
    
    //patrones
    patron(400,0);
    push();
    translate(800,-400);
    rotate(PI/2);
    patron(400,0);
    pop();
    //
 push();
   translate(1201,401);
   rotate(PI);
   patron(400, 0);
   pop();
   //
   push();
   translate(400,801);
   rotate(3*PI/2);
   patron(400, 0);
   pop();
  }

    if(contador>=0){
    estado=0;
  }
  ///
}

   void mousePressed(){
   if(r==210 && g==165 && b==100){
     r=colorrandom(100,165);
     g=colorrandom(100,210);
     b=colorrandom(165,210);
   } else {
     r=colorrandom(165,210);
     g=colorrandom(100,165);
     b=colorrandom(100,210);
   }
 }
 
  void keyPressed(){
   if(key==' '){
     if(dureza==0){
   dureza=125;
   } else if(dureza==125){
  dureza=255;
   } else {
   dureza=0;
   }
   }
   //Reinicio//
   if(key=='z'){
     contador=0;
     estado=0;
     r=100;
     g=200;
     b=300;
     dureza=0;
   }
 }
 
void patron(int posx, int posy){
if(mouseX>posx && mouseX<598 && mouseY>posy && mouseY<198){
  for(int x= posx-1; x < 586; x += 18) {
    for(int y= posy-1; y < 186; y += 18) {
      fill(30);
      quad(x+4,y+4,x+19,y+6,x+21,y+21,x+6,y+19);
    }
  }
  //
   for(int x= posx-1+(espacio*1); x < mouseX; x += 18) {
    fill(50);
    quad(x+4,(-1+(espacio*1))+4,x+19,(-1+(espacio*1))+6,x+21,(-1+(espacio*1))+21,x+6,(-1+(espacio*1))+19);
  }
   for(int x= posx-1+(espacio*2); x < mouseX; x += 18) {
     fill(105);
     quad(x+4,(-1+(espacio*2))+4,x+19,(-1+(espacio*2))+6,x+21,(-1+(espacio*2))+21,x+6,(-1+(espacio*2))+19);
   }
    for(int x= posx-1+(espacio*3); x < mouseX; x += 18) {
      fill(165);
      quad(x+4,(-1+(espacio*3))+4,x+19,(-1+(espacio*3))+6,x+21,(-1+(espacio*3))+21,x+6,(-1+(espacio*3))+19);
    }
     for(int x= posx-1+(espacio*4); x < mouseX; x += 18) {
       fill(220);
       quad(x+4,(-1+(espacio*4))+4,x+19,(-1+(espacio*4))+6,x+21,(-1+(espacio*4))+21,x+6,(-1+(espacio*4))+19);
     }
      for(int x= posx-1+(espacio*5); x < mouseX; x += 18) {
        fill(240);
        quad(x+4,(-1+(espacio*5))+4,x+19,(-1+(espacio*5))+6,x+21,(-1+(espacio*5))+21,x+6,(-1+(espacio*5))+19);
      }
     for(int x= posx-1+(espacio*6); x < mouseX; x += 18) {
       fill(220);
       quad(x+4,(-1+(espacio*6))+4,x+19,(-1+(espacio*6))+6,x+21,(-1+(espacio*6))+21,x+6,(-1+(espacio*6))+19);
     }
    for(int x= posx-1+(espacio*7); x < mouseX; x += 18) {
      fill(165);
         quad(x+4,(-1+(espacio*7))+4,x+19,(-1+(espacio*7))+6,x+21,(-1+(espacio*7))+21,x+6,(-1+(espacio*7))+19);
    }
   for(int x= posx-1+(espacio*8); x < mouseX; x += 18) {
     fill(105);
     quad(x+4,(-1+(espacio*8))+4,x+19,(-1+(espacio*8))+6,x+21,(-1+(espacio*8))+21,x+6,(-1+(espacio*8))+19);
   }
  for(int x= posx-1+(espacio*9); x < mouseX; x += 18) {
    fill(50);
    quad(x+4,(-1+(espacio*9))+4,x+19,(-1+(espacio*9))+6,x+21,(-1+(espacio*9))+21,x+6,(-1+(espacio*9))+19);
  }
   //
   // Filas verticales
  for(int y= posy-1+(espacio*1); y < mouseY; y += 18) {
    fill(50);
    quad((399+(espacio*1))+4,y+4,(399+(espacio*1))+19,y+6,(399+(espacio*1))+21,y+21,(399+(espacio*1))+6,y+19);
  }
   for(int y= posy-1+(espacio*2); y < mouseY; y += 18) {
     fill(105);
     quad((399+(espacio*2))+4,y+4,(399+(espacio*2))+19,y+6,(399+(espacio*2))+21,y+21,(399+(espacio*2))+6,y+19);
   }
    for(int y= posy-1+(espacio*3); y < mouseY; y += 18) {
      fill(165);
      quad((399+(espacio*3))+4,y+4,(399+(espacio*3))+19,y+6,(399+(espacio*3))+21,y+21,(399+(espacio*3))+6,y+19);
    }
     for(int y= posy-1+(espacio*4); y < mouseY; y += 18) {
       fill(220);
       quad((399+(espacio*4))+4,y+4,(399+(espacio*4))+19,y+6,(399+(espacio*4))+21,y+21,(399+(espacio*4))+6,y+19);
     }
      for(int y= posy-1+(espacio*5); y < mouseY; y += 18) {
         fill(240);
        quad((399+(espacio*5))+4,y+4,(399+(espacio*5))+19,y+6,(399+(espacio*5))+21,y+21,(399+(espacio*5))+6,y+19);
      }
     for(int y= posy-1+(espacio*6); y < mouseY; y += 18) {
       fill(220);
       quad((399+(espacio*6))+4,y+4,(399+(espacio*6))+19,y+6,(399+(espacio*6))+21,y+21,(399+(espacio*6))+6,y+19);
     }
    for(int y= posy-1+(espacio*7); y < mouseY; y += 18) {
      fill(165);
      quad((399+(espacio*7))+4,y+4,(399+(espacio*7))+19,y+6,(399+(espacio*7))+21,y+21,(399+(espacio*7))+6,y+19);
    }
   for(int y= posy-1+(espacio*8); y < mouseY; y += 18) {
     fill(105);
     quad((399+(espacio*8))+4,y+4,(399+(espacio*8))+19,y+6,(399+(espacio*8))+21,y+21,(399+(espacio*8))+6,y+19);
   }
  for(int y= posy-1+(espacio*9); y < mouseY; y += 18) {
    fill(50);
    quad((399+(espacio*9))+4,y+4,(399+(espacio*9))+19,y+6,(399+(espacio*9))+21,y+21,(399+(espacio*9))+6,y+19);
  }
   //
 } else {
      for(int x= posx-1; x < 586; x += 18) {
     for(int y= posy-1; y < 186; y += 18) {
       fill(30);
       quad(x+4,y+4,x+19,y+6,x+21,y+21,x+6,y+19);
     }
 }
  for(int x= posx-1+(espacio*1); x < 586; x += 18) {
    fill(50);
    quad(x+4,(-1+(espacio*1))+4,x+19,(-1+(espacio*1))+6,x+21,(-1+(espacio*1))+21,x+6,(-1+(espacio*1))+19);
  }
   for(int x= posx-1+(espacio*2); x < 586; x += 18) {
     fill(105);
     quad(x+4,(-1+(espacio*2))+4,x+19,(-1+(espacio*2))+6,x+21,(-1+(espacio*2))+21,x+6,(-1+(espacio*2))+19);
   }
    for(int x= posx-1+(espacio*3); x < 586; x += 18) {
      fill(165);
      quad(x+4,(-1+(espacio*3))+4,x+19,(-1+(espacio*3))+6,x+21,(-1+(espacio*3))+21,x+6,(-1+(espacio*3))+19);
    }
     for(int x= posx-1+(espacio*4); x < 586; x += 18) {
       fill(220);
       quad(x+4,(-1+(espacio*4))+4,x+19,(-1+(espacio*4))+6,x+21,(-1+(espacio*4))+21,x+6,(-1+(espacio*4))+19);
     }
      for(int x= posx-1+(espacio*5); x < 586; x += 18) {
        fill(240);
        quad(x+4,(-1+(espacio*5))+4,x+19,(-1+(espacio*5))+6,x+21,(-1+(espacio*5))+21,x+6,(-1+(espacio*5))+19);
      }
     for(int x= posx-1+(espacio*6); x < 586; x += 18) {
       fill(220);
       quad(x+4,(-1+(espacio*6))+4,x+19,(-1+(espacio*6))+6,x+21,(-1+(espacio*6))+21,x+6,(-1+(espacio*6))+19);
     }
    for(int x= posx-1+(espacio*7); x < 586; x += 18) {
      fill(165);
       quad(x+4,(-1+(espacio*7))+4,x+19,(-1+(espacio*7))+6,x+21,(-1+(espacio*7))+21,x+6,(-1+(espacio*7))+19);
    }
   for(int x= posx-1+(espacio*8); x < 586; x += 18) {
     fill(105);
     quad(x+4,(-1+(espacio*8))+4,x+19,(-1+(espacio*8))+6,x+21,(-1+(espacio*8))+21,x+6,(-1+(espacio*8))+19);
   }
  for(int x= posx-1+(espacio*9); x < 586; x += 18) {
    fill(50);
    quad(x+4,(-1+(espacio*9))+4,x+19,(-1+(espacio*9))+6,x+21,(-1+(espacio*9))+21,x+6,(-1+(espacio*9))+19);
  }
   //
    // Filas verticales
  for(int y= posy-1+(espacio*1); y < 186; y += 18) {
    fill(50);
    quad((399+(espacio*1))+4,y+4,(399+(espacio*1))+19,y+6,(399+(espacio*1))+21,y+21,(399+(espacio*1))+6,y+19);
  }
   for(int y= posy-1+(espacio*2); y < 186; y += 18) {
     fill(105);
     quad((399+(espacio*2))+4,y+4,(399+(espacio*2))+19,y+6,(399+(espacio*2))+21,y+21,(399+(espacio*2))+6,y+19);
   }
    for(int y= posy-1+(espacio*3); y < 186; y += 18) {
      fill(165);
      quad((399+(espacio*3))+4,y+4,(399+(espacio*3))+19,y+6,(399+(espacio*3))+21,y+21,(399+(espacio*3))+6,y+19);
    }
     for(int y= posy-1+(espacio*4); y < 186; y += 18) {
       fill(220);
       quad((399+(espacio*4))+4,y+4,(399+(espacio*4))+19,y+6,(399+(espacio*4))+21,y+21,(399+(espacio*4))+6,y+19);
     }
      for(int y= posy-1+(espacio*5); y < 186; y += 18) {
        fill(240);
        quad((399+(espacio*5))+4,y+4,(399+(espacio*5))+19,y+6,(399+(espacio*5))+21,y+21,(399+(espacio*5))+6,y+19);
      }
     for(int y= posy-1+(espacio*6); y < 186; y += 18) {
       fill(220);
          quad((399+(espacio*6))+4,y+4,(399+(espacio*6))+19,y+6,(399+(espacio*6))+21,y+21,(399+(espacio*6))+6,y+19);
     }
    for(int y= posy-1+(espacio*7); y < 186; y += 18) {
      fill(165);
      quad((399+(espacio*7))+4,y+4,(399+(espacio*7))+19,y+6,(399+(espacio*7))+21,y+21,(399+(espacio*7))+6,y+19);
    }
   for(int y= posy-1+(espacio*8); y < 186; y += 18) {
     fill(105);
     quad((399+(espacio*8))+4,y+4,(399+(espacio*8))+19,y+6,(399+(espacio*8))+21,y+21,(399+(espacio*8))+6,y+19);
   }
  for(int y= posy-1+(espacio*9); y < 186; y += 18) {
    fill(50);
    quad((399+(espacio*9))+4,y+4,(399+(espacio*9))+19,y+6,(399+(espacio*9))+21,y+21,(399+(espacio*9))+6,y+19);
  }
 }
}
float colorrandom (float a, float b){
  float resultado= random(a, b);
  return resultado;
}
