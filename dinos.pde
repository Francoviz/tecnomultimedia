class dinos{

PImage imagen;
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


void move(){
    xpos += xspeed;
    if(xpos > width -radio){
      --xspeed;
    }else if(xpos < 0){
    ++xspeed;
      }
}




void visualizar(){
  
background(0);
  imagen= loadImage("velociraptor-png-pic.png");

   imagen.resize(radio,radio);
  
image(imagen,xpos,ypos);


}


}
