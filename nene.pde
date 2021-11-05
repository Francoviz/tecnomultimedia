class nene{

float   x;
float y;
PImage nino;
float tamanio;

nene(float X,float Y,float tam){
  x=X;
  y=Y;
  tamanio=tam;
 
nino=loadImage("tommy.png");

nino.resize(int(tam),int(tam));
  image(nino,x,y);
}


void vernene(){

nino=loadImage("tommy.png");

nino.resize(100,100);
  image(nino,x,y);
}
void colision(dinos raptores){
  int pantalla=0;
  float d=dist(x,y,raptores.xpos,raptores.ypos);
if(d < 39){
pantalla=1;
}
if(pantalla ==1){
  background(0);
  ellipse(height,width,100,100);
}
}


void elnene(){
  

if(keyPressed==true && keyCode==RIGHT) {
    x= x+10;
    if(x > width){
      x = 1;
    }
  } else if (keyPressed==true && keyCode==LEFT){
    x= x-10;
       if(x < 0){
      x = width-1;
    }
  } else if (keyPressed==true && keyCode==UP){
    y= y-10;
  } else if (keyPressed==true && keyCode==DOWN && y < 800-100) {
    y= y+10;
}
}

}
