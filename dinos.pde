class dinos{

PImage imagen,imagen2,imagen3;
float xpos;
float ypos;
float xspeed;
int radio;

dinos(float Xpos,float Ypos, float Xspeed,int Radio){
    xpos=Xpos;
    ypos=Ypos;
    xspeed=Xspeed;
    radio=Radio;

}

//dinomovivientos
void move(){
    xpos += xspeed;
    if(xpos > width -radio-60){
      --xspeed;
    }else if(xpos < 0+radio+40){
    ++xspeed;
      }
}



//visualizacion de dinos
void visualizar(int pepe){
  
if(pepe==1||pepe==4||pepe==7){
  imagen= loadImage("velociraptor-png-pic.png");

   imagen.resize(radio,radio);

image(imagen,xpos,ypos);
}
if(pepe==2||pepe==6){
imagen2=loadImage("Velociraptor-info-graphic.png");


  imagen2.resize(radio,radio);


image(imagen2,xpos,ypos);

}
if(pepe==3 || pepe==5){
imagen3=loadImage("blue raptor.png");

  imagen3.resize(radio,radio);

image(imagen3,xpos,ypos);
}

}


float getX(){
  return xpos;
}
float getY(){
  return ypos;
}

}
