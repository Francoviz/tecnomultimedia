class juego{
  
  int estado;
  int x=450;
  int y=700;
nene jugador;
dinos [] raptores=new dinos[8];
llave lallave;
juego(){


jugador=new nene(x,y,100);

for(int i=1;i< raptores.length;i++){
raptores[i]=new dinos(random(0,900),i*600/raptores.length,random(10,25),100);

lallave= new llave(random(1,800),random(100,500),25);
}



}
void update(){

  PImage cocina;
  cocina=loadImage("kitchenn.png");
  image(cocina,0,0);

for(int i=1;i< raptores.length;i++){
raptores[i].visualizar(i);
raptores[i].move();
}
lallave.lvisual();
jugador.vernene();
jugador.colision(raptores);
lallave.lapuerta(jugador);
lallave.colisionl(jugador);

}

void teclado(){
jugador.elnene();


}

int devolverestadojuego(){

return  y; 


}
int devolverestadojuego1(){

return  x; 
}

}
