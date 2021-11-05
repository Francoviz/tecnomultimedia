class juego{
  
  int estado;
nene jugador;
dinos raptores,raptores2,raptores3;

juego(){
estado=0;

jugador=new nene(300,500,100);
raptores=new dinos(5,20,10,100);




}
void update(){
raptores.visualizar();

raptores.move();

jugador.vernene();
jugador.colision(raptores);
}

void teclado(){
jugador.elnene();


}
int devolverestadojuego(){
return estado;

}

}
