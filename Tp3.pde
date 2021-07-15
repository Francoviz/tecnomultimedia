int r  =0;
color R = color(255);
color R1 = color(0);
void setup(){
  
  size(600,600);
  rectMode(CENTER);
  
}

void draw(){
  background(100);
noFill();
 
for(int x =0;x < 300;x += 5){
  strokeWeight(5);
  rect(width/2,height/2,x,x);
  if( x%2 == 0){
    stroke(R1);}else{
      stroke(R);
  }
  pushMatrix();

  translate(width/2,height/2);
    rotate(radians(r));
  triangle(-100-x,-100-x,100+x,-100-x,0,100+x);
  popMatrix();
}

} 
void mouseClicked(){
R = color(random(255),random(255),random(255),random(255)); 
  R1 = color(random(255),random(255),random(255),random(255)); 
}
 void mouseDragged(){
  r = mouseX; 
   
 }
  
