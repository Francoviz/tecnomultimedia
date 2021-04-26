void setup(){

size(600,600);
background(100);

}

void draw(){
 //ellipse del medio
  fill(255);
  triangle(125,195,475,195,300,500);
  fill(0);
  ellipse(300,300,50,50);
  
  // naranja y rojito raro
  fill(#ff7700);
  ellipse(405,120,50,50);
  fill(#ff0077);
  ellipse(195,120,50,50);
  
  //rojo y cyan
  fill(#ff0000);
  ellipse(300,100,50,50);
  fill(#00ffff);
  ellipse(300,500,50,50);
 
  
  // izquierda y derecha
  fill(#7700ff);
  ellipse(100,300,50,50);
   fill(#77ff00);
  ellipse(500,300,50,50);
  
  // diagonales de abajo
  fill(#0000ff);
  ellipse(125,405,50,50);
  fill(#00ff00);
  ellipse(475,405,50,50);
  
  // diagonales de arriba
  
  fill(#ff00ff); //magenta
  ellipse(125,195,50,50);
  fill(#ffff00); //amarillo
  ellipse(475,195,50,50);
  
  fill(#00ff77); //verde agua
  ellipse(405,480,50,50);
  fill(#0077ff);
  ellipse(195,480,50,50);
}
