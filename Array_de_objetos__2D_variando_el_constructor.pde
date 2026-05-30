/*
Ejercicio 2: Una Grilla de Estacionamiento (Array 2D / Matriz)Inicializar objetos en coordenadas X e Y
 Imagina un estacionamiento pequeño de n filas y m columnas (un total de 6 lugares). Queremos crear un coche virtual (Movil) para cada lugar y que cada uno sepa exactamente en qué fila y columna nació.
 Enunciado:
 Modifica o crea en la clase Movil  un contructor para que ahora maneje (minimo)dos variables: int fila e int columna. Este contructor necesita algun dato más?
 Un constructor que reciba ambos datos: Movil(int f, int c)     (esos dos datos como minimo)
 En el programa principal, haz lo siguiente:Declarar e inicializar un array de 2 dimensiones (matriz)  lleno de objetos Movil.En el void setup(), utiliza dos bucles for anidados (uno para las filas y otro para las columnas)
 */

class movil {
  PVector pos, vel;
  int R = 10 ;

  movil(float x, float y) {
    pos = new PVector(x, y);
    vel = new PVector(1.1,1.1);
  }
  
  
  void mostrar() {
    ellipse(pos.x, pos.y, R, R);
  }
  
  void mover() {
    pos.add(vel);
    contener();
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

 

int filas = 5;
int columnas = 5;
movil[][] moviles;


void setup() {

  size(500, 500);
  frameRate(300);
rectMode(CENTER);
  int divx = width/filas;
  int divy = height/columnas;

  moviles = new movil[filas][columnas];
  for (int i = 0; i<filas; i++) {
    for (int j = 0; j<columnas; j++) {

      int x = (divx*i)+divx/2;
      int  y = (divy*j)+divy/2;

      rect(x, y, divx, divy);
      
      moviles[i][j] = new movil((x), (y));
    }
  }
}
void draw() {

  for (int i = 0; i<filas; i++) {
    for (int j = 0; j<columnas; j++) {
      
      moviles[i][j].mostrar();
      moviles[i][j].mover();
  
    }
  }
}
