class Pelota{
  PVector pos;
  PVector vel;
  float r = 10;
  color c = color(255);
  
  Pelota(){
   pos = new PVector(width/2, height/2);
   vel = new PVector(10,0);
  }
  
  void mover(){
   pos.add(vel); 
   if(pos.y>height-r|| pos.y<r  || pos.x>width-r || pos.x<r){
    vel.y = vel.y*-1; 
    vel.x = vel.x*-1;
   }
  }
  
  void mostrar(){
   fill(c);
   circle(pos.x, pos.y,r);
  }
  
  void colision(){
    
  }
  
}
