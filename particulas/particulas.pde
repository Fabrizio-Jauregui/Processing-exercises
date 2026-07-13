int tamMovil = 50;
Movil[] Pelotas = new Movil[tamMovil];

void setup() {
  size(500, 500);
  for (int i=0; i<Pelotas.length; i++) {
    Pelotas[i] = new Movil();
  }
}
void draw() {
  background(100);
  for (int i=0; i<Pelotas.length; i++) {
    Pelotas[i].mover();
    Pelotas[i].contener();
    Pelotas[i].dibujar();
  }
}

