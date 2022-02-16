class Aventura {

  Pantalla pant;
  Juego jugando;
  Aventura() { // Constructor
    pant =new Pantalla();



    jugando=new Juego();
  }
  void iniciar() {
    if (pant.Estado!=19 && jugando.pantallazo==false) {
      pant.fijado(0, "Bienvenido a jurassic park \n la aventura grafica \n tu objetivo sera guiar a nuestros amigos \n para salir a salvo de la isla", "izquierda para creditos", "derecha \n para continuar", "", "");
      pant.visualizarpantalla();
      // Inicio la aventura y le paso el objeto Juego por parametros. Ahora Pant conoce el objeto juego y puede acceder a sus metodos tambien.
    } else if (pant.Estado==19 && jugando.pantallazo==false) {
      jugando.update();
      jugando.pants();
    } else {
      
     pant.Estado=24;
      pant.visualizarpantalla();
    }
  }
  void teclado() {
    if (pant.Estado!=19 ) {

      pant.key();
    } if(pant.Estado==19){
    jugando.teclado();
    
    }if(jugando.pantallazo==true){
    pant.key();
    }
  }
}
