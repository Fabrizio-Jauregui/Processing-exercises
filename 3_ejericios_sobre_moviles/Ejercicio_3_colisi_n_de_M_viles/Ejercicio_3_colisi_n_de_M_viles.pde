/*
Ejercicio 3: colisión de Móviles
 Implementar dos objetos móviles en la pantalla: ambos deben tener un movimiento acelerado producto de la gravedad. Al detectarse la colisión entre ellos deben chocar, alejándose y achicarse.
 */

Movil Pelota;
Movil Pelota2;


void setup() {
  size(800, 800);
  Pelota = new Movil(250, 500);
  Pelota2 = new Movil();
}

void draw() {
  background(100);
  Pelota.aplicarGravedad();
  Pelota.mover();
  Pelota.contener();
  Pelota.dibujar();
  Pelota.achicar(Pelota2);
  Pelota2.aplicarGravedad();
  Pelota2.mover();
  Pelota2.contener();
  Pelota2.dibujar();
  Pelota2.chocar(Pelota);
  Pelota2.achicar(Pelota);
  
}
