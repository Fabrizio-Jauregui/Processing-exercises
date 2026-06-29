class Movil {

  PVector pos;
  PVector vel;
  PVector acel;
  float limit;
  float ancho;
  float alto;
  float rotacion;
  float acel_rotac;
  float vel_angular;

  Movil() {
    pos = new PVector(500, 200);
    vel = new PVector(5, 5);
    acel = new PVector(0.001, 0.01);
    limit = 100;
    ancho = 100;
    alto = 100;
    rotacion = 0;
    acel_rotac = 0.0005;
    vel_angular = 0;
  }

  void dibujar() {
    rectMode(CENTER);

    pushMatrix();
    translate(pos.x, pos.y);
    rotate(rotacion);
    rect(0, 0, ancho, alto);
    popMatrix();
  }


  void mover() {
    pos.add(vel);
  }

  void acelerar() {
    vel.add(acel);
   // vel.limit(limit);
  }

  void chocar() {
    if (pos.x-(ancho*0.5) < 0 || pos.x-(ancho*0.5)  > width || pos.x + ancho/2 < 0 || pos.x + ancho/2 > width) {
      vel.x = vel.x*-1;
      acel.x = acel.x*-1;
    }
    if (pos.y-(alto*0.5) < 0 || pos.y-(alto*0.5) > height || pos.y + alto/2 < 0 || pos.y + alto/2 > height) {
      vel.y = vel.y*-1;
      acel.y = acel.y*-1;
    }
  }

  void rotar() {
    vel_angular = vel_angular + acel_rotac;
    rotacion += vel_angular;
  }

  void consola() {
    println(rotacion);
  }
}
