class Movil {

  PVector pos;
  PVector vel;
  float dx;
  float dy;
  float dist;


  Movil(float posx, float posy) {
    pos = new PVector(posx, posy);
    vel = new PVector(5, 5);
  }

  void dibujar() {
    circle(pos.x, pos.y, 20);
  }


  void mover() {
    pos.add(vel);
  }


  void chocar() {
    if (pos.x < 0 || pos.x  > width ) {
      vel.x = vel.x*-1;
    }
    if (pos.y < 0 || pos.y > height) {
      vel.y = vel.y*-1;
    }
  }

  void perseguir(Movil otro) {
    dx = (otro.pos.x) - pos.x;
    dy = (otro.pos.y) - pos.y;
    dist = dist(otro.pos.x, otro.pos.y, pos.x, pos.y);
    vel = new PVector(dx, dy);
    vel.setMag(5);
    
  }
}
