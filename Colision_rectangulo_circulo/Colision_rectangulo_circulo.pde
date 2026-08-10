/*
Ejercicio 1: Rotación por Fuerza
 Implementar un objeto móvil que reciba una fuerza externa y, en lugar de solo desplazarse, experimente una aceleración angular que lo haga rotar al moverse por la pantalla.
 */

Circle Circle;
Rectangulo Rectangulo;
void setup() {
  size(600, 600);
  Circle = new Circle();
  Rectangulo = new Rectangulo();
}

void draw() {
  background(0);
  Circle.dibujar();
  Circle.mover();
  Circle.chocar();
  Rectangulo.dibujar();
}
