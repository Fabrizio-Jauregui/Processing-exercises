boolean is_w = false;
boolean is_s = false;
boolean is_g = false;
boolean is_b = false;
boolean is_up = false;
boolean is_down = false;
boolean is_8 = false;
boolean is_2 = false;
void keyPressed() {
  if (key == 'w' || key == 'W') is_w = true;
  if (key == 's' || key == 'S') is_s = true;
  if (key == 'g' || key == 'G') is_g = true;
  if (key == 'b' || key == 'B') is_b = true;
  if (keyCode == UP) is_up = true;
  if (key == DOWN) is_down = true;
  if (keyCode == 8) is_8 = true;
  if (key == 2) is_2 = true;
}

void keyReleased() {
  if (key == 'w' || key == 'W') is_w = true;
  if (key == 's' || key == 'S') is_s = true;
  if (key == 'g' || key == 'G') is_g = true;
  if (key == 'b' || key == 'B') is_b = true;
  if (keyCode == UP) is_up = true;
  if (key == DOWN) is_down = true;
  if (keyCode == 8) is_8 = true;
  if (key == 2) is_2 = true;
}
