PImage img,img2,img3,img4,img5;
PFont fuente;
PFont fuente2;
PFont Titulo;
int jay = 0;
int Pantalla;
int marcaDelTiempo;
int tiempoDePantalla;

void setup(){
   textSize(30);
  size(1000,600);
  
   fuente = createFont("Jurassic_Park.ttf",50);
Titulo = createFont("Jurassic_Park.ttf",200);

  img = loadImage("Jurassic_Park_MC2.jpg");
img2 = loadImage("puerta al parque.jpg");
  img3 = loadImage("entre coches.jpg");
img4 = loadImage("persecución.jpg");
img5 = loadImage("Distraccion.jpg");

  image(img,0,0);
  image(img2,0,0);
  image(img3,0,0);
  image(img4,0,0);
  image(img5,0,0);
  

    fuente2 = loadFont("Impact-20.vlw");
   textFont(fuente);

  //inicio en la primer pantalla
  Pantalla = 0;
    marcaDelTiempo = 0;
  tiempoDePantalla = 8000;
}
void draw(){
  
    
  fill(14,168,189);
  if ( Pantalla == 0 ) {
    background( img2 );
  textFont(Titulo);
     text("JURASSIC PARK",250,620- jay);
  jay = jay +1;
     textFont(fuente);
  text( "Dirigida por \n Steven Spielberg",350,800 - jay);
      if( millis()-marcaDelTiempo >= tiempoDePantalla ){  
      marcaDelTiempo = millis();  
      Pantalla = 1;
      println( "marcaDelTiempo: " + marcaDelTiempo );
    }
             } else if ( Pantalla == 1 ) {
    background( img );
     textFont(fuente);
     jay = jay +1;
  text("Producción por",100,100);
  textFont(fuente2);
  text("Gerald R. Molen  -Productor",1100-jay,700 - jay);
  text("Kathleen Kennedy -Productor",1100-jay,750 - jay);
  text("Lata Ryan -Productor asociado",1100-jay,800 - jay);
  text("Colin Wilson -Productor asociado",1100-jay,850 - jay);
   if( millis()-marcaDelTiempo > tiempoDePantalla ){  
      marcaDelTiempo = millis();  
      Pantalla = 2;
      jay=0;
      println( "marcaDelTiempo: " + marcaDelTiempo );
   }
    } else if ( Pantalla == 2 ) {
      background(img3);
      jay =jay +1;
  textFont(Titulo);
  text("Casting ",-100+jay,100);
  textFont(fuente2);
  text("Sam Neill - Dr. Alan Grant  \n Laura Dern - Dra. Ellie Sattler \n Jeff Goldblum - Dr. Ian Malcolm \n Richard Attenborough - John Hammond \n Joseph Mazzello - Tim Murphy",1100-jay,200 );
  text("Ariana Richards - Lex Murphy \n Bob Peck - Robert Muldoon \n Martin Ferrero - Donald Gennaro \n Samuel L. Jackson - Arnold Ray \n B. D. Wong - Henry Wu \n Wayne Knight - Dennis Nedry \n Gerald R. Molen - Gerry Harding \n Cameron Thor - Lewis Dodgson",1100-jay,400);
   if( millis()-marcaDelTiempo > tiempoDePantalla ){ 
      marcaDelTiempo = millis();  
      Pantalla = 3;
      println( "marcaDelTiempo: " + marcaDelTiempo );
   }
 } else if ( Pantalla == 3 ) {
      background(img4);
      jay =jay +1;
  textFont(fuente);
  text("Efectos Especiales",-200+jay,100);
  textFont(fuente2);
  text("Stan Winston\n Dennis Muren\n Phil Tippett \n Michael Lantieri",-200+jay,200);
  textFont(fuente);
  text("Musica y \n Banda sonora",200,800 - jay);
  textFont(fuente2);
  text("Jonh Williams",200,900-jay);
text("1. Títulos iniciales \n 2. Tema de Jurassic Park \n 3. Incidente en la isla \n 4. Viaje a la isla \n 5. El ataque de las rapaces \n 6. Bebé raptor para incubar \n 7. Bienvenido a Jurassic Park \n 8. Mi amigo,el braquiosaurio \n 9. Dennis roba el embrión \n 10. Un árbol para mi cama \n 11. Trucos de cuerda floja \n 12. Recordando Petticoat Lane \n 13. Puerta del Parque Jurásico \n 14. Ojo a ojo \n 15. T-Rex Rescate y Final \n 16. Créditos finales",200,950-jay);
  if( millis()-marcaDelTiempo > tiempoDePantalla ){ 
      marcaDelTiempo = millis();  
      Pantalla = 4;
      println( "marcaDelTiempo: " + marcaDelTiempo );
  }
 } else if ( Pantalla == 4 ) {
      background(img5);
      jay =jay +1;
      textFont(fuente);
       text("Historia Basada En \n   Parque Jurásico de Michael Crichton",300,1700-jay);
text("Judy Drosd \n Don Lessem \n George Lucas \n JoAnn Yukimura",1320-jay,200);

textFont(Titulo);
text("Gracias",1300-jay,100);

 if( millis()-marcaDelTiempo > tiempoDePantalla ){  
      marcaDelTiempo = millis();  
      Pantalla = 0;
      jay=0;
      println( "marcaDelTiempo: " + marcaDelTiempo );
 }
}
}
