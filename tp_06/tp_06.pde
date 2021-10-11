Control control;

void setup() {
  size(256, 256);
  control = new Control();
}

void draw() {
  background(#EAE7EE);
  control.draw_image();
}

void mouseClicked() {
  control.select();
  println(round(mouseX/64));
}
