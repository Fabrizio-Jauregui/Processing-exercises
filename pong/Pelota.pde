class Pelota {
  PVector pos;
  PVector vel;
  float r = 10;
  color c = color(255);

  Pelota() {
    pos = new PVector(width/2, height/2);
    vel = new PVector(10, 0);
  }

  boolean chocaConRect(PVector rectPos, int rectWidth, int rectHeight) {
    if (pos.x < (rectPos.x - rectWidth/2)) PMCR.x = rectPos.x - rectWidth/2;
    else if (pos.x > (rectPos.x + rectWidth/2)) PMCR.x = rectPos.x + rectWidth/2;
    else PMCR.x = pos.x;

    if (pos.y < (rectPos.y - rectHeight/2)) PMCR.y = rectPos.y - rectHeight/2;
    else if (pos.y > (rectPos.y + rectHeight/2)) PMCR.y = rectPos.y + rectHeight/2;
    else PMCR.y = pos.y;

    return colisiona(PMCR);
  }

  boolean colisiona(PVector PMCR) {
    return dist(pos.x, pos.y, PMCR.x, PMCR.y) < r;
  }

  void mover() {
    pos.add(vel);
    if (pos.y>height-r|| pos.y<r  || pos.x>width-r || pos.x<r) {
      vel.y = vel.y*-1;
      vel.x = vel.x*-1;
    }
  }

  void mostrar() {
    fill(c);
    circle(pos.x, pos.y, r);
  }

  void colision() {
  }
}
