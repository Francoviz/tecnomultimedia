
Aventura a;

void setup() {
  size(800, 600);
  a= new Aventura();
}

void draw() {
  a.iniciar();

}


void keyPressed() {
  a.teclado();
}
