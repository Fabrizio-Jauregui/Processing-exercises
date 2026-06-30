Pelota Pe;
Paleta Pa;
Paleta Pa2;

void setup(){
 size(500,500); 
 Pe = new Pelota();
 Pa = new Paleta(width/9, height/2, 'w', 's');//void keyPressed, voidkeyReleased
 Pa2 = new Paleta(width/1.15, height/2, UP, DOWN);
}
void draw(){
 background(0);
 Pe.mover();
 Pe.mostrar();
 Pa.mostrar();
 //Pa2.mostrar();

}
