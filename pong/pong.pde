Pelota Pe;
Paleta Pa;
Paleta Pa2;
PVector PMCR = new PVector(0, 0); //Punto mas cercano del rectangulo, es el punto del rectangulo que esta mas cerca del centro de la pelota

void setup() {
  size(800, 800);
  Pe = new Pelota();
  Pa = new Paleta(width/9, height/2, 'w', 's');//void keyPressed, voidkeyReleased
  Pa2 = new Paleta(width/1.15, height/2, 'y', 'h');
}
void draw() {
  background(0);
  if (Pe.chocaConRect(Pa.pos, Pa.tamAncho, Pa.tamAlto)) {
    Pa.c = color(0, 255, 0);
  } else Pa.c = color(255, 255, 255);
  if (Pe.chocaConRect(Pa2.pos, Pa2.tamAncho, Pa2.tamAlto)) {
    Pa2.c = color(0, 255, 0);
  } else Pa2.c = color(255, 255, 255);
  Pe.mover();
  Pe.mostrar();
  Pa.mostrar();
  Pa2.mostrar();
}
