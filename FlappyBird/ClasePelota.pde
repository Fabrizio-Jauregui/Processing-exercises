class Pelota { 
  PVector pos;
  PVector vel;
  float r = 20; 
  color c = color(255); 

  Pelota(float x, float y){ 
    pos = new PVector(x, y);
    vel = new PVector(0, 0); 
  }

  void addFuerza(PVector fuerza){ 
    vel.add(fuerza);
  }

  void mover(){
    pos.add(vel);
    vel.limit(10); 
  }
  
  void mostrar(){
    fill(c);
    circle(pos.x, pos.y, r * 2); 
  }
  
  void rebotar(){
    if(pos.y > height - r){
       pos.y = height - r;
       estado = 1; 
    }
    if(pos.y < r){
       pos.y = r;
       vel.y = 0;
    }
  }
}

void keyPressed() {
  if (estado == 1) {
    if (key == 'r' || key == 'R') {
      reiniciar();
    }
    return;
  }
  if (key == ' ' || keyCode == UP || key == 'w' || key == 'W') {
    bird.vel.y = -8;
  }
}
