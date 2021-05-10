PImage socorro;
PImage base_dark;
PImage frankie;
PImage circle;
PImage top;
PFont font_debug_10;
PFont font_debug_20;
boolean debug;
int main_counter;
boolean top_bool;
int top_counter;
int alpha_frankie;
int alpha_top;
boolean circle_bool;
int circle_counter;
int alpha_circle;


void setup() {
  size(712,500);
  
  socorro = loadImage("socorro.png");
  
  base_dark = loadImage("base_dark.png");
  
  frankie = loadImage("frankie.png");
  
  circle = loadImage("circle.png");
  
  top = loadImage("top.png");
  
  font_debug_10 = loadFont("Bahnschrift-10.vlw");
  font_debug_20 = loadFont("Bahnschrift-20.vlw");
  debug = true;
  
  main_counter = 0;
  alpha_frankie = 0;
  alpha_top = 0;
  alpha_circle = 0;
}

void draw() {
  background(#ffffff);
  
  //base
  tint(255,255);
  image(socorro,0,0);
  image(base_dark,356,0);
  
  if (debug == true) {
    textFont(font_debug_20);
    textAlign(CENTER,CENTER);
    text("click aquí para\niniciar la animación",534,250);
  }
  
  //switch
  if (debug == false) {
    main_counter += 1;
    
    if (top_bool == true) { top_counter += 5; alpha_top = top_counter; }
    if (circle_bool == true) { circle_counter += 5; alpha_circle = circle_counter; }
    
    tint(255,alpha_frankie);
    image(frankie,356,0);
    
    tint(255,alpha_top);
    image(top,356,0);
    
    tint(255,alpha_circle);
    image(circle,356,0);
    
    textFont(font_debug_20);
    fill(#C3503D,alpha_top);
    textAlign(CENTER,CENTER);
    text("Elsa Bornemann",534,440);
    fill(255);
    
    textFont(font_debug_10);
    fill(#2F3334,alpha_circle);
    textAlign(LEFT,TOP);
    text("Prologo de\nFrankestein",392,462);
    fill(255);
    
    switch(main_counter) {
      case 30:
        alpha_frankie = 25;
        break;
      case 60:
        alpha_frankie = 0;
        break;
      case 120:
        alpha_frankie = 50;
        break;
      case 200:
        alpha_frankie = 0;
        break;
      case 320:
        alpha_frankie = 255;
        break;
      case 370:
        top_bool = true;
        break;
      case 500:
        circle_bool = true;
        break;
    }
    
  }
}

void mouseClicked() {
  if (mouseX > 356) {
    debug = false;
  }
}
