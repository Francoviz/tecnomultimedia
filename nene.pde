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

//PARA LA COLISION DE RAPTORS Y VER A TOMMY EN PANTALLA
void vernene(){

nino=loadImage("tommy.png");

nino.resize(100,100);
  image(nino,x,y);
}
void colision(dinos[] raptores){
  for(int i=1;i<raptores.length;i++){
  float x_dino=raptores[i].getX();
  float y_dino=raptores[i].getY();
  float d=dist(x,y,x_dino,y_dino);
if(d < 39){
Jugando.pantalla=3;
}

  }
}


//para mover a tommy por pantalla
void elnene(){
  

if(keyPressed==true && keyCode==RIGHT) {
    x= x+40;
    if(x > width){
      x = 1;
    }
  } else if (keyPressed==true && keyCode==LEFT){
    x= x-40;
       if(x < 0){
      x = width-1;
    }
  } else if (keyPressed==true && keyCode==UP && y > 0){
    y= y-40;
  } else if (keyPressed==true && keyCode==DOWN && y < 800-100) {
    y= y+40;
}

}

float getnX(){
  return x;
}
float getnY(){
  return y;
}
}
