/*
Ejercicio 2:
Persecución de Móviles
  Implementar dos objetos móviles en la pantalla:
El Móvil A, que debe tener un movimiento libre, por ejemplo lineal. El Móvil B, que debe calcular en cada frame la dirección hacia el Móvil A para acercarse a él y perseguirlo continuamente.
*/

Movil Pelota;
Movil Pelota2;
void setup() {
  size(800, 800);
  Pelota = new Movil(500, 800);
  Pelota2 = new Movil(0, 0);
}




void draw() {
  background(0);
  Pelota.dibujar();
  Pelota.mover();
  Pelota.chocar();
  Pelota2.dibujar();
  Pelota2.mover();
  Pelota2.chocar();
  Pelota2.perseguir(Pelota);
}
