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

movil[] moviles;
int cant = 10;

void setup() {
  size(800, 600);
  frameRate(60);
  moviles = new movil[cant];
  for (int i = 0; i<cant; i++) {
    moviles[i] = new movil(random(width), random(height));
  }
}

void draw() {
  for (int i = 0; i<cant; i++) {
    moviles[i].mover();
    moviles[i].mostrar();
  }
}
