void setup() {
  //ventana
  size(400,400); //size ventana
  background(#CCCCCC); //bg
  noFill();
  strokeWeight(10); //rect borde de ventana
  rect(0,0,400,400);
  
  /*
  text
  
  el texto no es exactamente igual porque
  la fuente del ejemplo es Arial
  y no quería sobrecomplicar el codigo
  creando una fuente nueva
  */
  
  fill(#000000); //color text
  textSize(18.5);
  text("Esto es un cuadrado verde", 10,100); //text top
  text("Esto es una ellipse azul:", 10,300); //text bott

  //rectangulos
  strokeWeight(1); //rect borde
  fill(#00FF00); //color rect
  rect(250,50,100,100);
  fill(#0000FF); //color elli
  ellipse(300,300,100,100);
}

void draw(){}
