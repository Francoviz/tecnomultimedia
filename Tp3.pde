//https://youtu.be/WlpkNKQhVAY
int r  =0;
color B = color(255);
color N = color(0);
void setup(){
  
  size(600,600);
  rectMode(CENTER);
  
}

void draw(){
  background(100);
noFill();

for(int x =0;x < 450;x += 5){
  strokeWeight(5);

  if( x%2 == 0){
    stroke(N);}else{
      stroke(B);
  }
  pushMatrix();

  translate(width/2,height/2);
         rotate(radians(r+x));
  triangle(-10-x,-10-x,10+x,-10-x,0,10+x);
  popMatrix();
}

} 
void mouseClicked(){
B = color(random(255),random(255),random(255)); 
  N = color(random(255),random(255),random(255)); 
   float distancia = dist(mouseX,mouseY,295,295); //Boton de pantalla reset
  if(distancia < 5)
    {
   
    r = 0;
     B = color(255);
     N = color(0);
    }
}
 void mouseDragged(){
  r = mouseX; 
   
 }
  void keyPressed(){
   if (key == 'r'){ //reset
     r =0;
     B = color(255);
     N = color(0);
     
  }
  }
