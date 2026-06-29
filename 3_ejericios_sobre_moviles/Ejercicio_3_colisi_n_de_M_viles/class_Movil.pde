class Movil {

  PVector pos;
  PVector vel;
  PVector gravedad;
  int tamPelota = 100;
  Movil() {
    pos = new PVector(width/2, height/2);
    vel = new PVector(3, 5);
    gravedad = new PVector(0, 1);
  }

  Movil(float posx, float posy) {
    pos = new PVector(posx, posy);
    vel = new PVector(3, 5);
    gravedad = new PVector(0, 1);
  }

  void dibujar() {
    circle(pos.x, pos.y, tamPelota);
  }

  void mover() {
    pos.add(vel);
  }

  void contener() {

    if (pos.x < 0) {
      pos.x = 0;
      vel.x = vel.x * -1;
    }
    if (pos.x > width) {
      pos.x = width;
      vel.x = vel.x * -1;
    }

    if (pos.y < 0) {
      pos.y = 0;
      vel.y = vel.y * -1;
    }
    if (pos.y > height) {
      pos.y = height;
      vel.y = vel.y * -1;
    }
  }

  void aplicarGravedad() {
    vel.y += gravedad.y;
  }

  void chocar(Movil otro) {


    if (dist(otro.pos.x, otro.pos.y, pos.x, pos.y) < tamPelota ) {
      vel.y = vel.y * -1;
      vel.x = vel.x * -1;
      otro.vel.x *= -1;
      otro.vel.y *= -1;
    }
  }
  
  void achicar(Movil otro){
    if (dist(otro.pos.x, otro.pos.y, pos.x, pos.y) < tamPelota ) {
      tamPelota -= 25;
  }
}
}
