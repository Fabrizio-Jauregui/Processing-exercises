int cantFil = 10;
int cantCols = 10;
boolean[][] numbers;

void setup() {
  size(1000, 1000);
  numbers = new boolean[cantCols][cantFil];
}

void draw() {
  float ancho = width / cantCols;
  float alto = height / cantFil;

  for (int i = 0; i < cantCols; i++) {
    for (int j = 0; j < cantFil; j++) {

      float x = i * ancho;
      float y = j * alto;


      if (numbers[i][j])  estampa(x, y, ancho, alto);
      else {
        
        fill(255);
        rect(x, y, ancho, alto);
      }
      
    }
  }
}

void mousePressed() {
  float ancho = width / cantCols;
  float alto = height / cantFil;

  int col = int(mouseX / ancho);
  int fil = int(mouseY / alto);


  if (col >= 0 && fil >= 0) {
    numbers[col][fil] = !numbers[col][fil];
  }
}

void estampa(float x, float y, float w, float h) {

  stroke(0);
  fill(255, 80, 150);
  rect(x, y, w, h);

  fill(0, 160, 150);
  ellipse(x+w/2, y+h/2, w, h);

  fill(255, 255, 0);
  rect(x+w/4, y+h/4, w/2, h/2);
}
