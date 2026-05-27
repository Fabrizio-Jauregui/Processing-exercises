/*
Ejercicio 2: Laberinto con estructura multidimensional
 
 
 Desarrollar un programa en Processing que genere y dibuje un laberinto simple a partir de una estructura de datos multidimensional.
 
 Cada celda del laberinto debe contener información sobre sus paredes y posibles diagonales. Esta información se almacenará en un array multidimensional. De que tipo de dato podríamos crearlo?. cuantas dimensiones necesito?
 
 La estructura debe permitir definir, para cada celda, si se dibuja o no cada uno de sus lados, incluida las diagonales
 
 
 
 
 Inicializar el array con valores que definan un conjunto de celdas.
 
 Dibujar cada celda en pantalla respetando la información almacenada.
 
 Cada pared o diagonal debe dibujarse solo si su valor es true.
 
 Organizar visualmente las celdas formando una grilla.
 Generar los valores de forma aleatoria.
 Comprender cómo utilizar arrays multidimensionales para representar estructuras complejas, donde cada elemento contiene múltiples atributos que afectan su representación visual.
 
 */

int columnas = 10;
int filas = 10;

boolean[][][] array = new boolean[columnas][filas][6];

void setup() {
  size(500, 500);
  inicializar_datos();
}

void draw() {
  background(200);
  create_laberinto();
}

void inicializar_datos() {
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      for (int w = 0; w < 6; w++) {
        array[i][j][w] = random(1) < 0.5;
      }
    }
  }
}

void create_laberinto() {
  int ancho =  width / filas;
  int alto =  height / columnas;
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      float posX = i * ancho;
      float posY = j * alto;
      float posXP = posX + ancho;
      float posYP = posY + alto;

      if (array[i][j][0]) line(posX, posY, posXP, posY);
      if (array[i][j][1]) line(posXP, posY, posXP, posYP);
      if (array[i][j][2]) line(posX, posYP, posXP, posYP);
      if (array[i][j][3]) line(posX, posY, posX, posYP);
      if (array[i][j][4]) line(posX, posY, posXP, posYP);
      if (array[i][j][5]) line(posXP, posY, posX, posYP);
    }
  }
}
