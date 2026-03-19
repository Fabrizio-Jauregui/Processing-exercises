float marginX = width*0.5;
float marginY = height*0.5;
void setup() {
  size(1920, 1080);
 
}


void drawCircle(){
 fill(155, 200, 180);
 ellipse(width*0.2, height*0.6, width/10, height/10);
}

void drawCube(){
line(width*0.4,height*0.4,width*0.6,height*0.4);
line(width*0.4,height*0.4,width*0.4,height*0.6);
line(width*0.6,height*0.4,width*0.6,height*0.6);
line(width*0.4,height*0.6,width*0.6,height*0.6);
}


void draw() {
drawCube();
drawCircle();
}
