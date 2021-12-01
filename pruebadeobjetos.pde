//https://youtu.be/QOhDBgoHj8g


juego Jugando;
void setup() {
  size(800, 600);


  Jugando=new juego();

  Jugando.update();
}


void draw() {
  Jugando.pants();
}
void keyPressed() {


  Jugando.teclado();
}
