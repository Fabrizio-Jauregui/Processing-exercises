class Rectangulo {

  PVector pos;
  float ancho;
  float alto;

  Rectangulo() {
    pos = new PVector(width/2, height/2);
    ancho = 50;
    alto = 50;
  }

  void dibujar() {
    rectMode(CENTER);
    rect(pos.x, pos.y, ancho, alto);
  }

}
