// 1) hacer lo mismo del pizaron, pero tanto arriba como abajo
// 2) hacer una cuadricula de cuadrados.

int cant = 10;
int i = 0;

void setup(){
 size(800, 800); 
}
void draw(){
  float sep1 = width/cant;

for(int i=0; i<cant; i++){
  float x = i*sep1;
 line(x, 0, width/2, height/2); 
 line(x, height, width/2, height/2); 
}
}
