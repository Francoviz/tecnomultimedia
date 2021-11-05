//LEER README por favor

int pantalla;
juego Jugando;
void setup(){
size(1000,800);

Jugando=new juego();

}

void draw(){
 
 Jugando.update();

}
void keyPressed(){

Jugando.teclado();
}
