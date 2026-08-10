class Circle {

  PVector pos;
  PVector vel;
  PVector acel;
  float radio;
  float radio2;

  Circle() {
    pos = new PVector(500, 200);
    vel = new PVector(5, 5);
    radio = 50;
    radio2 = radio/2;
  }

  void dibujar() {
circle(pos.x, pos.y, radio);
  }


  void mover() {
    pos.add(vel);
  }

  void chocar() {
    if (pos.x - radio2 < 0 || pos.x + radio2  > width ) {
      vel.x = vel.x*-1;
    }
    if (pos.y - radio2 < 0 || pos.y + radio2 > height) {
      vel.y = vel.y*-1;
    }
  }
}
