class Aventura {

  Pantalla pant;

  Aventura() { // Constructor
    pant =new Pantalla();



  }
  void iniciar(){
pant.fijado(0, "Bienvenido a jurassic park \n la aventura grafica \n tu objetivo sera guiar a nuestros amigos \n para salir a salvo de la isla", "izquierda para creditos", "derecha \n para continuar", "", "");
   pant.visualizarpantalla();
   // Inicio la aventura y le paso el objeto Juego por parametros. Ahora Pant conoce el objeto juego y puede acceder a sus metodos tambien. 
  }
void teclado(){
 pant.key();



}
}
