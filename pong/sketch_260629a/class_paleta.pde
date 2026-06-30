class Paleta {

  PVector pos;
  color c = color(255);
  int tamAlto = 100;
  int tamAncho = 10;

  Paleta(float posx, float posy, char teclaArriba, char teclaAbajo) {
    pos = new PVector(posx, posy);
    
  }
  void mostrar() {
    fill(255);
    rectMode(CENTER);
    rect(pos.x, pos.y, tamAncho, tamAlto);
  }
  
  void mover(char teclaArriba, char teclaAbajo){
   if(teclaArriba =='w'){
    pos.y = pos.y +10; 
   }
   
   if(teclaAbajo == 's'){
    pos.y = pos.y -10; 
   }
   
  }
  
}
