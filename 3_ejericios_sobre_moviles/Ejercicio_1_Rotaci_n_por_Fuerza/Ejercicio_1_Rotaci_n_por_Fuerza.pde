/*
Ejercicio 1: Rotación por Fuerza
 Implementar un objeto móvil que reciba una fuerza externa y, en lugar de solo desplazarse, experimente una aceleración angular que lo haga rotar al moverse por la pantalla.
 */

Movil Rectangulo;
void setup() {
  size(800, 800);
  Rectangulo = new Movil();
}




void draw() {

  background(0);

  Rectangulo.dibujar();
  Rectangulo.rotar();
  Rectangulo.mover();
  Rectangulo.chocar();
  Rectangulo.acelerar();
  //Rectangulo.consola();
}
