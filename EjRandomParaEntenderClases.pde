class Movil {

  PVector pos;
  PVector vel = new PVector (5,4);
  float d = 40;
  
  // --- LISTA PARA GUARDAR EL TRAYECTO ---
  ArrayList<PVector> trayecto = new ArrayList<PVector>();

  Movil (float originx, float originy){
    pos= new PVector(originx, originy); 
  }

  void mostrar(){
    // --- DIBUJAR EL TRAYECTO (Línea verde) ---
    stroke(0, 255, 0); // Color verde para el trayecto pasado
    strokeWeight(2);
    noFill();
    beginShape();
    for (PVector p : trayecto) {
      vertex(p.x, p.y); // Une todos los puntos guardados del camino
    }
    endShape();
    
    // --- DIBUJAR LA BOLA ---
    fill(222,99,222);
    d=random(40,100);
    frameRate(30);
    noStroke();
    circle(pos.x, pos.y, d); // Dibuja la bola
    
    // --- VISUALIZAR VECTOR DE POSICIÓN (Línea Azul) ---
    stroke(0, 0, 255); // Color azul para la posición
    strokeWeight(2);
    line(0, 0, pos.x, pos.y);
    
    // --- VISUALIZAR VECTOR DE VELOCIDAD (Línea Roja con multiplicador) ---
    stroke(255, 0, 0); // Color rojo para la velocidad
    strokeWeight(4);
    line(pos.x, pos.y, pos.x + (vel.x * 10), pos.y + (vel.y * 10));
    
    noStroke(); // Reset del borde para el resto del código
  }

  void contener(){
    vel.rotate(PI/300);
    
    // Si choca a la izquierda o derecha
    if (pos.x < 0 || pos.x > width) {
      vel.x = vel.x * -1;
      trayecto.clear(); // --- BORRA EL TRAYECTO AL CHOCAR ---
    }
    
    // Si choca arriba o abajo
    if (pos.y < 0 || pos.y > height) {
      vel.y = vel.y * -1;
      trayecto.clear(); // --- BORRA EL TRAYECTO AL CHOCAR ---
    }
  }

  void mover(){
    // Guardamos una copia de la posición actual antes de movernos para estirar el trayecto
    trayecto.add(new PVector(pos.x, pos.y));
    
    pos.add(vel);
  }
}

Movil m;
Movil otro;
Movil mimi;
Movil momo;
float h;
float s;
float b;

void setup() {
  size(800, 600);
  colorMode(HSB, 600, 100, 100);
  m = new Movil (width/2, height/2);
  otro = new Movil (500, 600);
  mimi = new Movil (300, 400);
  momo = new Movil (200, 300);
}

void draw() {
  h = m.pos.y;
  s = 100.0;
  b = 100.0;
  background(h, s, b);
  
  m.mover();
  otro.mover();
  mimi.mover();
  momo.mover();
  
  m.contener();
  otro.contener();
  mimi.contener();
  momo.contener();
  
  m.mostrar();
  otro.mostrar();
  mimi.mostrar();
  momo.mostrar();
}
