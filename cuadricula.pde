//Hacer una cuadricula

int cant = 10;
int i = 0;

void setup() {
  size(400, 400);
}
void draw() {
  float sep1 = width/cant;
  float sep2 = height/cant;

  for (int i=0; i<cant; i++) {
    for(int j=0; j<cant; j++){
    float x = i*sep1;
    float y = j*sep2;
    rect(x, y, width, height);
    
   
    }
    
  }
}
