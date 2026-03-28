int cant = 10;
int sepx, sepy;
void setup() {
  size(500, 500);
  sepx = width/cant;
  sepy = height/cant;
}

void draw() {
  background(255);
  for (int i = 0; i<cant; i++) {
    line(0, i*sepy, i*sepx, height);//vertice inferior izquierdo
    line(width, height-i*sepy, i*sepx, height);//vertice inferior derecho
   line(width, height-i*sepy, width-i*sepx, 0); //vertice superior derecho
   line(0, i*sepy, width-i*sepx, 0); //vertice superior izquierdo
  }
}
