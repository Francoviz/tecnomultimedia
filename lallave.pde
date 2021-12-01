class llave{
  
  float lx;
  float ly;
  int lradio;
  PImage llavesota;
  boolean agarrolallave=false;
  
  llave(float Lx,float Ly,int Lradio){
    lx=Lx;
    ly=Ly;
    lradio=Lradio;
  }
  //colision de llave
  void lvisual(){
    
    if( agarrolallave==false){
  
  llavesota= loadImage("llavesita.png");

   llavesota.resize(lradio,lradio);

image(llavesota,lx,ly);
  
    }else {
      
      
      image(llavesota,-100,0);
  
  }   
  }
  //colisiones
  void colisionl(nene nen){
  float x_nen=nen.getnX();
  float y_nen=nen.getnY();
  float dl=dist(lx,ly,x_nen+20,y_nen+50);
if(dl < 20){
  agarrolallave=true;

}
  }
  void lapuerta(nene nen){
     float x_nen=nen.getnX();
  float y_nen=nen.getnY();
  fill(178,178,178);
rect(450,0,125,20);
fill(124,124,124);

rect(463,0,100,18);
fill(0,255,0);
textSize(16);
text("salida",490,14);
if( 415 < x_nen && x_nen < 500 && y_nen < -10 && agarrolallave==true){
 Jugando.pantalla=2; 
}
else if(415 < x_nen && x_nen < 500 && y_nen < -10 && agarrolallave==false){
  text("te olvidaste la llave",0,14);
}
  }
 
  
float getXl(){
  return ly;
}
float getYl(){
  return ly;
}
   boolean getllave(){
     return agarrolallave;
  
}
}
