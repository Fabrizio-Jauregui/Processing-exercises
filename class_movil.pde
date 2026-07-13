class Movil {

  PVector pos;
  PVector vel;
  int tamPelota = 20;

  Movil() {
    for (int i = 0; i<Pelotas.length; i++) {
      pos = PVector.random2D();
      vel = PVector.random2D();
      pos.mult(random(10));
      vel.mult(random(10));
    }
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

  void printear() {
    println(vel);
    println(pos);
  }
}
