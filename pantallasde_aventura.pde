class Pantalla {
  // -----------------------------------------------------
  //PROPIEDADES
  int jay;
  PImage [] pantalla;
  int Estado;
  int maximagen=28;
  PImage[] imagenes=new PImage[maximagen];
  String[] fileimagenes = {"puerta al parque.jpg", "recien nacido.jpg", "entre coches.jpg", "persecución.jpg", "t rex vigilante.jpg", "quedate callada.jpg", "pareja rex.jpg", "colision multiple.jpg", "estacionado sobre colina.jpg", 
    "muro salvador.jpg", "visto raptor.jpg", "arbolito milagroso.jpg", "volteado.jpg", "acantilado.jpg", "emboscada raptor.jpg", "laboratorio abandonado.jpg", "jacky vago.jpg", "charla dinosaurica.jpg", "puente peligro.jpg", 
    "raptors en cocina.jpg", "cocinado.jpg", "velero salvador.jpg", "rescate de helicoptero.jpg", "raptor puerta.jpg", "lo peor ya paso.jpg", "jeeps militares.jpg", "junglita.jpg", "no debiste.jpg"};

  // -----------------------------------------------------
  //CONSTRUCTOR
  Pantalla() {
    Estado=0;

    for (int i=0; i<fileimagenes.length; i++) {
      imagenes[i]=loadImage(fileimagenes[i]);
    }
  }
  // -----------------------------------------------------
  //MÉTODOS

  // Fondos según estado
  void fijado (int number, String center, String left, String right, String up, String down) {

    if ( Estado == number ) {
      image(imagenes[number], width, height);
      imagenes[number].resize(800, 600);

      background( imagenes[number]);

      textSize(20);
      text( center, 180, 180 );
      textSize(15);
      text( "Pantalla: " + Estado, 15, 15 );
      fill(0, 255, 0);
      text( left, 25, 300); 
      text(right, 585, 300);
      text(up, 300, 25);
      text(down, 300, 565);
    }
  }
  void visualizarpantalla() {
    fijado(0, "Bienvenido a jurassic park \n la aventura grafica \n tu objetivo sera guiar a nuestros amigos \n para salir a salvo de la isla", "izquierda para creditos", "derecha \n para continuar", "", "");
    fijado(1, "Al llegar todos son llevados al laboratorio genetista \n para ver la creacion de dinosaurios \n a travez de distintas secuencias de ADN,luego de observar todo \n son invitados a recorrer el parque", "", "derecha \n para continuar", "", "");
    fijado(2, "durante el viaje la energia del parque es cortada \n un t-rex irrumpe en el camino \n los estudios de paleontologia indican correr o quedarse quieto", "izquierda \n para esperar", "derecha \n para arrancar el auto", "", "");
    fijado(3, "Al arrancar el auto son perseguidos por el t-rex salvando el otro auto \n por la radio te avisan que un empleado \n traiciono a la isla y se llevo datos \n tardaran en reactivar el parque y pedir ayuda", "izquierda para \n camino \n con barro", "derecha \n  para ir \n  por la jungla", " arriba para \n  acelerar por empedrado", "abajo para \n  subir colina");
    fijado(4, "El t-rex inspeciona el auto,los niños de adentro \n no pueden evitar el panico \n y causan mucho ruido", "", "derecha \n para continuar", "", "");
    fijado(5, "El t-rex voltea el vehiculo \n acabando con la vida de la mitad \n de los pasajeros \n el doctor grant trata de callar a la chica \n intentando no hacer ruido pero ya es tarde", "", "", "", "");
    fijado(6, "El auto se va parando a medida que avanzan \n y ahora tienen el doble de problemas \n fin del camino", "", "Abajo para reinicio", "", "");
    fijado(7, "Durante la travesia por la jungla \n un triceratops se cruza y el t-rex se distrae \n pierden el control del auto \n y se estrellan pero salen ilesos", "", "", "", "abajo \n para continuar");
    fijado(8, "Al acelerar para subir la colina el t-rex se queda atras \n y tambien la bateria del auto \n Frante a ellos a hay una cerca electrica \n que podrian escalar y \n al costado un simple arbol", "", "", "arriba \n para escalar", "abajo para \n ver el arbol \n  mas de cerca");
    fijado(9, "Al acelerar por el empedrado  \n pierden al t-rex rapidamente y se topan con un muro  \n el cual se puede subir", "Enter para \n  continuar", "", "", "");
    fijado(10, "Al salir del auto \n los raptors los ven \n que deberian hacer?", "izquierda para \n  correr", "derecha \n para quedarse quieto", "", "");
    fijado(11, "En el arbol habia una escalera sin \n conductividad electrica, rapidamente nuestros amigos \n la colocan en posicion y cruzan al otro lado \n por la jungla", "", "", "", "abajo para \n continuar");
    fijado(12, "mientras intentan escalar la cerca sin electricidad, los \n del otro auto reactivaron la electricidad \n dejando tostados a todos", "", "abajo para reinicio", "", "");
    fijado(13, "luego de subir el muro y caminar  \n hay un precipicio, pero parece haber dos formas de cruzarlo  \n un puente en mal estado  \n o ir por la selva del costado", "", "", "arriba para \n jungla", "abajo \n para puente");
    fijado(14, "Dato curioso: \n los raptors trabajan en equipo \n y rodean a su presa \n hacer eso no fue buena idea", "", "", "", "");
    fijado(15, "Al salir corriendo nuestros amigos \n se encuentran una vieja instalacion en el medio de la jungla \n rapidamente entran y se separan \n mientras los persiguen", "", "", "", "abajo para \n continuar");
    fijado(16, "Al revisar el ruido extraño se encuentran \n con un vago,este dice: \n siganme si quieren salir de la isla", "confiar \n en vago", "desconfiar \n del vago \n  y alejarse", "", "");
    fijado(17, "Es descortes interrumpir la charla \n sobre la cena, ahora la cena \n seran ustedes...", "", "", "", "");
    fijado(18, "El puente aunque dificil de cruzar,  \n no se rompe y llegan  \n del otro lado, al final de la isla ", "enter para \n contnuar", "", "", "");
    fijado(19, "Al pequeño Timmy lo persiguen los raptors \n hasta la cocina \n que deberia hacer?", "izquierda para \n no hacer ruido", "derecha \n para arriesgarte", "", "");
   
    fijado(21, "El vago cumplio y los guio a una playa \n donde ahora forman parte de su tripulacion \n en busca de aventuras sin dinosaurios", "", "", "", "");
    fijado(22, "Rapidamente un ruido los sorprende  \n de arriba,un helicoptero baja  \n a rescatarlos, todos estan a salvo", "", "", "", "");
    fijado(23, "Al salir rapido Timmy de la cocina \n la hermana esperando afuera, traba la puerta \n impidiendo el paso de raptors!!", "", "", "", "abajo \n para continuar");
    fijado(24, "Rapidamente el resto del equipo se encuentra \n y escuchan un ruido afuera", "", "quedarse \n esperando", "", "salir a \n ver el ruido");
    fijado(25, "Al salir un convoy militar, los encuentra  \n todos estan a salvo y practicamente salir de la isla es un hecho... ", "", "", "", "");
    fijado(26, "En la selva se escuchan ruidos/ tiros ;)  de \n diferente arbustos \n cual deberian revisar?", "", "", "seguir ruido \n  desconocido", "seguir \n  ruido animal");
    fijado(27, "Los raptors logran abrir las puertas \n justo cuando la electricidad es reactivada \n no debieron quedarse en el edificio", "", "", "", "");
    if ( Estado == 28 ) {
      image(imagenes[17], height, width);
      imagenes[17].resize(800, 600);
      background( imagenes[17]);
      text( "A veces si hay que hacerle caso a un vago \n extrañamente ebrio,ni el doctor alan ni tu escaparon pero  \n los niños si se fueron con el vago", width/2, height/2 );

     
    }
    if ( Estado == 29 ) {


      background(0);
      textSize(25);
      fill(random(0, 255), random(0, 255), random(0, 255));
      text( "Jurassic park aventura grafica \n hecho por Franco Vizgarra \n Profesor: \n Matias jaregui Lorda \n Lenguaje multimedial año 2021 ", 850 - jay, 650-jay );
      jay++;
      text("derecha para volver a inicio", 25, 400);
    }
  }
  void key () {
    if (keyPressed==true && keyCode==RIGHT && Estado==0) {
      Estado=1;
    } else if (keyPressed==true && keyCode==LEFT && Estado==0) {
      Estado=29;
    } else if (keyPressed==true && keyCode==RIGHT && Estado==29) {
      jay=0;
      Estado=0;
    } else if (keyPressed==true && keyCode==RIGHT && Estado==1) {
      Estado=2;
    } else if (keyPressed==true && keyCode==RIGHT && Estado==2) {
      Estado=3;
    } else if (keyPressed==true && keyCode==LEFT && Estado==2)
      Estado=4;
    else if (keyPressed==true && keyCode==RIGHT && Estado==4) {
      Estado=5;
      //LOS 4 CAMINOS
    } else if (keyPressed==true && keyCode==LEFT && Estado==3) 
      Estado=6;
    else if (keyPressed==true && keyCode==RIGHT && Estado==3) {
      Estado=7;
    } else if (keyPressed==true && keyCode==DOWN && Estado==3) {
      Estado=8;
    } else if (keyPressed==true && keyCode==UP && Estado==3) {
      Estado=9;
    } else if (keyPressed==true && keyCode==DOWN && Estado==7) {
      Estado=10;
    } else if (keyPressed==true && keyCode==RIGHT && Estado==10) {
      Estado=14;
    } else if (keyPressed==true && keyCode==LEFT && Estado==10) {
      Estado=15;
    } else if (keyPressed==true && keyCode==DOWN && Estado==15) {
      Estado=19;//PRIMERA PANTALLA DEL JUEGO 19
    } else if (keyPressed==true && keyCode==LEFT && Estado==19) {
      Estado=20;
    } else if (keyPressed==true && keyCode==RIGHT && Estado==19) {
      Estado=23; //ESTADO 23 ES LA PANTALLA SI GANO EL JUEGO
    } else if (keyPressed==true && keyCode==DOWN && Estado==23) {
      Estado=24; //ESTADO 24 ES LA QUE SIGUE DESPUES DE LA 23
    } else if (keyPressed==true && keyCode==RIGHT && Estado==24) {
      Estado=27; //ESTA ES LA PANTALLA SI PIERDO EN EL JUEGO
    } else if (keyPressed==true && keyCode==DOWN && Estado==24) {
      Estado=25;
    } else if (keyPressed==true && keyCode==UP && Estado==8) {
      Estado=12;
    } else if (keyPressed==true && keyCode==DOWN && Estado==8) {
      Estado=11;
    } else if (keyPressed==true && keyCode==DOWN && Estado==11) {
      Estado=26;
    } else if (keyPressed==true && keyCode==DOWN && Estado==26) {
      Estado=17;
    } else if (keyPressed==true && keyCode==UP && Estado==26) {
      Estado=16;
    } else if (keyPressed==true && keyCode==LEFT && Estado==16) {
      Estado=21;
    } else if (keyPressed==true && keyCode==RIGHT && Estado==16) {
      Estado=28;
    } else if (keyPressed==true && keyCode==ENTER && Estado==9) {
      Estado=13;
    } else if (keyPressed==true && keyCode==UP && Estado==13) {
      Estado=14;
    } else if (keyPressed==true && keyCode==DOWN && Estado==13) {
      Estado=18;
    } else if (keyPressed==true && keyCode==ENTER && Estado==18) {
      Estado=22;
    } else if (keyPressed==true && keyCode==ENTER && Estado==28) {
      Estado=21;
      //Reinicio
    } else if (Estado==25||Estado==22||Estado==21||Estado==6||Estado==14||Estado==20||Estado==27||Estado==12||Estado==5||Estado==17 && keyPressed==true && keyCode==DOWN) {
      Estado=29;
    }
  }
}