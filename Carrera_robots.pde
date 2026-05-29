/*
Ejercicio 1: Una Fila de Robots (Array 1D)Inicializar objetos en fila
 Imagina que tienes n robots  en una pista de carreras recta. Quieres que cada uno se coloque automáticamente en una posición de salida diferente a lo largo de la línea separados a distancia fija.
 Usando la Clase ya creada:
 Declarar e inicializar un array de 1 dimensión que contenga n objetos Movil, pasándole a cada uno una posición distinta
*/
 
 class movil {
  PVector pos, vel;
  int R = 10 ;


  movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(0, 1);
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

movil[] moviles;
int cant = 10;


void setup() {
  size(800, 600);
  int div = width/cant;
  println(div);
  frameRate(60);
  moviles = new movil[cant];
  for (int i = 0; i<cant; i++) {
    moviles[i] = new movil(div *i, 0);
  }
}

void draw() {
  for (int i = 0; i<cant; i++) {
    moviles[i].mover();
    moviles[i].mostrar();
  }
}
