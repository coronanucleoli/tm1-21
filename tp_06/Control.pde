class Control {

  Animation[] img_array = new Animation[4];

  Control() {
    for (int i = 0; i < 4; i++) {
      this.img_array[i] = new Animation();
    }
  }

  void draw_image() {
    for (int i = 0; i < 4; i++) {
      this.img_array[i].draw_image(i);
    }
  }

  void select() {
    for (int i = 0; i < 4; i++) {
      if (round(mouseX/64) == (this.img_array[i].pos_x / 64)) {
        this.img_array[i].selected = true;
      }
    }
  }
}
