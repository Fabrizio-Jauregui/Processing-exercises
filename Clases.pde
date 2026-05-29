class movil {
  PVector pos, vel;
  int R = 10 ;


  movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(2, 1);
  }


  void mover() {
    pos.add(vel);
    contener();
  }

  void mostrar() {
    ellipse(pos.x, pos.y, R, R);
  }

  void contener() {
    if (pos.x<0 || pos.x >width) {
      pos.sub(vel);
      vel.x = vel.x*-1;
     
    }
    if (pos.y<0 || pos.y >height) {
      vel.y = vel.y*-1;
    }
  }
}
movil m;

void setup(){
  size(500, 500);
  frameRate(120);
  m = new movil(width/2, height/2);
}
void draw(){
  m.mover();
  m.mostrar();
  
}
