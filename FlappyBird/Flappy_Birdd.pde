ArrayList <Cuadrado> tubos;
Pelota bird; 
float UltimoPar = 0;
PVector G = new PVector(0, 0.5); 
int estado = 0;
int puntaje = 0;

void setup(){
  size(800, 600);
  tubos = new ArrayList <Cuadrado>();
  bird = new Pelota(100, height/2); 
  UltimoPar = millis();
}

void draw(){
  background(0);
  
  if (estado == 0) {
    agregartubos();
    bird.addFuerza(G);
    bird.mover();
    bird.rebotar();
    borrartubos();
    for(Cuadrado t: tubos){
      t.mover();
      if(colision(bird, t)){
        estado = 1;
      }
    }
  }
  
  for(Cuadrado t: tubos){
    t.mostrar();
  }
  bird.mostrar();
  
  fill(255);
  textSize(24);
  text("Puntaje: " + puntaje, 20, 40);
  
  if (estado == 1) {
    textSize(32);
    text("Presiona R para reiniciar", 220, 300);
  }
}

boolean colision(Pelota p, Cuadrado c){
  return p.pos.x + p.r > c.pos.x && 
         p.pos.x - p.r < c.pos.x + c.ancho &&
         p.pos.y + p.r > c.pos.y && 
         p.pos.y - p.r < c.pos.y + c.alto;
}

void reiniciar(){
  tubos.clear();
  bird = new Pelota(100, height/2);
  UltimoPar = millis();
  puntaje = 0;
  estado = 0;
}
