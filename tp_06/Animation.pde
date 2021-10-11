class Animation {

  PImage[] gif = new PImage[4];
  int frame = 0;
  int framerate = 0;
  int pos_x = 0;
  boolean selected = false;

  Animation() {
    for (int i = 0; i < 4; i++) {
      gif[i] = loadImage("data/img/" + i + ".png");
    }
  }

  void draw_image(int _pos_x) {
    /* animación */
    if (this.selected == true) {
      if (this.framerate < 59) {  
        this.framerate += 1;
      } else if (this.framerate == 59) {  
        this.framerate = 0;
      }
    }
    frame = round(framerate / 15);
    /* animación */

    pos_x = _pos_x * 64;
    image(this.gif[frame], pos_x, 0);
    fill(#000000);
  }
}
