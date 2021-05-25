int circle_counter = 255;
int circle_timer = 0;
boolean circle_timer_bool = false;
int circle_total = 0;
int circle_x = 200; int circle_y = 150; int circle_radius = 150;
boolean circle_onscreen = false;
boolean circle_can_click = false;
int score = 0;
boolean screen_start = true; boolean screen_main = false; boolean screen_win = false; boolean screen_lose = false;
String text_start = "¡Hacé click en los circulos antes\nde que desaparezcan!\n¡Mientras más rapido lo hagas,\nmás puntos vas a obtener!\n\n¡Lográ una puntuación\nminima de 1500 para ganar!\n\n(Click para iniciar)";
String text_main = "Puntaje: " + score;
String text_win = "¡Ganaste!\n:D\n\n\n\n\n\n\nPuntaje final: " + score;
String text_lose = "Perdiste...\n:(\n\n\n\n\n\n\nPuntaje final: " + score;

void setup() {
  size(400,300);
  noStroke();
}

void draw() {
  if (screen_start == true) {
    background(#ffffff);
    fill(#000000);
    textSize(20);
    textAlign(LEFT,TOP);
    text(text_start,10,10);
  }
  
  if (screen_main == true) {
    background(#000000);
    fill(#ffffff);
    text(text_main,10,10);
    text_main = "Puntaje: " + score;
    // ---------- debug ----------
    //text("//DEBUG//\n" + circle_timer + " " + circle_timer_bool + " " + circle_counter + " " + circle_can_click,10,240);
    textAlign(RIGHT,TOP);
    text("Circulo: " + circle_total + "/10",390,10);
    textAlign(LEFT,TOP);
    
    if (circle_onscreen == true) {
      fill(255,circle_counter);
      ellipse(circle_x,circle_y,circle_radius,circle_radius);
      circle_counter -= 3;
      
      if (dist(mouseX,mouseY,circle_x,circle_y) < (circle_radius/2)) {
        circle_can_click = true;
      } else {
        circle_can_click = false;
      }
      
    }
    
    if (circle_timer_bool == true) {
      circle_timer -= 1;
    }
    
    if (circle_timer == 0) {
      circle_timer_bool = false;
      circle_onscreen = true;
    }
    
    if (circle_total == 10) {
      screen_main = false;
      circle_counter = 255;
      circle_timer = 0;
      circle_timer_bool = false;
      circle_total = 0;
      circle_onscreen = false;
      circle_can_click = false;
      
      if (score >= 1500) {
        screen_win = true;
      } else {
        screen_lose = true;
      }
    }
  }
  
  if (screen_win == true) {
    background(#ffffff);
    fill(#000000);
    textSize(20);
    textAlign(LEFT,TOP);
    text_win = "¡Ganaste!\n:D\n\n\n\n\n\nPuntaje final: " + score + "\n(Click para jugar de nuevo)";
    text(text_win,10,10);
  }
  
  if (screen_lose == true) {
    background(#ffffff);
    fill(#000000);
    textSize(20);
    textAlign(LEFT,TOP);
    text_lose = "Perdiste...\n:(\n\n\n\n\n\nPuntaje final: " + score + "\n(Click para jugar de nuevo)";
    text(text_lose,10,10);
  }
}

void mousePressed() {
  if (screen_start == true) {
    screen_start = false;
    screen_main = true;
  }
  
  if (screen_main == true) {
    if (circle_onscreen == false) {
      circle_timer_bool = true;
      circle_timer = int(random(1*60,1*60));      
    }
    
    if (circle_onscreen == true) {
      if (dist(mouseX,mouseY,circle_x,circle_y) < 150) {
        circle_onscreen = false;
        score += circle_counter;
        circle_total += 1;
        circle_counter = 255;
        circle_timer = int(random(1*60,1*60));
        circle_timer_bool = true;
        circle_x = int(random(75,325));
        circle_radius = int(random(25,150));
      }
    }
  }
  
  if (screen_win == true) {
    screen_win = false;
    screen_start = true;
    score = 0;
  }
  
  if (screen_lose == true) {
    screen_lose = false;
    screen_start = true;
    score = 0;
  }
}
