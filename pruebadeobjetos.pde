int pantalla=1;
int tam=800;
juego Jugando;
void setup(){
size(800,600);

Jugando=new juego();

  
}


void draw(){
if(pantalla==0){
   
      surface.setSize(1000,800);
  
 background(0);


 Jugando.update();
 


  }
  //comprobar si al volver al juego tengo que volver a setSize
if(pantalla ==1){
  PImage cocina;
  surface.setSize(800,600);
  cocina=loadImage("raptors en cocina.jpg");
  cocina.resize(800,600);
  background(cocina);
  fill(0,233,255);
  text("derecha para \n iniciar el juego",600,width/3);
 textSize(20);
  text("El pequeño Timmy esta atrapado ayudalo a huir de los velociraptos \n en la cocina \n usa las flechas para moverte",0,width/2);
  
}
if(pantalla==2){
   PImage atrapado;
  surface.setSize(800,600);
  atrapado=loadImage("raptor puerta.jpg");
  atrapado.resize(800,600);
  background(atrapado);
text("Lo lograste, el pequeño timmy logro escapar \n y cuando cruzo la puerta  \n su hermana y el la trabaron",0,width/2);

if(pantalla==4){
  
background(0);
  
}
}
}
void keyPressed(){

Jugando.teclado();
if (keyPressed==true && keyCode==RIGHT && pantalla==1) {
    pantalla=0;
 
  }
}
