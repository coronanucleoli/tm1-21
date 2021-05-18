//variables
PImage img;
PImage ui_l;
PImage ui_r;

int counter = 0;
int text_bottom_y = 284;
int page = 27;

int alpha_l = 100;
int alpha_r = 100;

String text_bottom = "";

void setup() {
  size(400,300);
  
  ui_l = loadImage("ui/l.png");
  ui_r = loadImage("ui/r.png");
}

void draw() {
  background(#000000);
  
  tint(255,alpha_l);
  image(ui_l,0,0,37,37);
  tint(255,alpha_r);
  image(ui_r,width-37,0,37,37);
  tint(255,255);
  
  img = loadImage("img/" + page + ".jpg");
  image(img,0,37,400,225);
  
  textAlign(CENTER, CENTER);
  text("Imagen: " + page + "/45",210,18);
  
  if (counter < 255) {
    counter += 15;
    text_bottom_y -= 1;
  } else {
    counter = 255;
    text_bottom_y = height-34;
  }
  
  fill(255,counter);
  textAlign(LEFT,TOP);
  text(text_bottom,8,text_bottom_y);
  fill(255,255);
  
  if (page == 01) {
    alpha_l = 100;
  } else {
    alpha_l = 255;
  }
  
  if (page == 45) {
    alpha_r = 100;
  } else {
    alpha_r = 255;
  }
  
  if          (page == 01){ text_bottom = "Hoy presentamos Destripando la Historia: Día de Muertos!";
    } else if (page == 02){ text_bottom = "\"NO MANCHES, ¿TAMBIÉN SE MURIÓ EL CONEJO?\"";
    } else if (page == 03){ text_bottom = "\"¡No! Solo se garabateó la cara.\n\"¡Ándale, mijito!\"";
    } else if (page == 04){ text_bottom = "♪ Entre el 1 y dos de noviembre...♪";
    } else if (page == 05){ text_bottom = "♪ Entre el 1 y dos de noviembre\nse celebra el Día de Muertos ♪";
    } else if (page == 06){ text_bottom = "♪ Porque así se recuerda a los muertos\nque es algo que se hace desde hace un buen tiempo ♪";
    } else if (page == 07){ text_bottom = "♪ Es hermoso y muy colorido,... ♪";
    } else if (page == 8){  text_bottom = "♪ ...con altares pa' los que se han ido ♪";
    } else if (page == 9){  text_bottom = "♪ Adornados con fotos del finado,... ♪";
    } else if (page == 10){ text_bottom = "♪ ...con flor de cempasúchitl y papel picado ♪";
    } else if (page == 11){ text_bottom = "♪ Se le pone calaveras,... ♪";
    } else if (page == 12){ text_bottom = "♪ ...cigarros y tequila ♪";
    } else if (page == 13){ text_bottom = "♪ Un platillo de comida,... ♪";
    } else if (page == 14){ text_bottom = "♪ ...la que siempre fue su preferida ♪";
    } else if (page == 15){ text_bottom = "♪ Ya los mexicas dedicaban varias fiestas a los muertos,\n por lo menos unas seis ♪";
    } else if (page == 16){ text_bottom = "♪ Llegaron los cristianos... ♪";
    } else if (page == 17){ text_bottom = "♪ ...y se quedó como ves ♪";
    } else if (page == 18){ text_bottom = "♪ Depende de como murieses\nte mandaban a reinos extraños ♪";
    } else if (page == 19){ text_bottom = "♪ Donde vivían los dioses,\npronunciarlos es muy complicado ♪";
    } else if (page == 20){ text_bottom = "\"Si te ahogabas ibas al Tlaloc\"";
    } else if (page == 21){ text_bottom = "\"Si morías luchando al Omeyocán\"";
    } else if (page == 22){ text_bottom = "\"Los niños muertos al Chichihuanauco\"";
    } else if (page == 23){ text_bottom = "\"Y los que morían de muerte natural al Mictlán,\ndonde les esperaban Mictlantlecutli y Mictecaci... tu... hu...\"";
    } else if (page == 24){ text_bottom = "\"¡YO NO SÉ PRONUNCIAR ESTO RODRIGO!\"";
    } else if (page == 25){ text_bottom = "\"Bueno, nosotros vamos al Mictlan...\"";
    } else if (page == 26){ text_bottom = "\"...donde tenías que hacer un viaje de 4 años\"";
    } else if (page == 27){ text_bottom = "♪ Primero encontrabas un río\ny la orilla llena de perros ♪";
    } else if (page == 28){ text_bottom = "♪ Si has sido bueno con ellos,\nte ayudarán a cruzar hasta un cerro ♪";
    } else if (page == 29){ text_bottom = "♪ Tendrás que pasar dos montañas,\nque entrechocan y que te aplastan ♪";
    } else if (page == 30){ text_bottom = "♪ Después subes otra montaña,\nque te corta y te deja sin nada ♪";
    } else if (page == 31){ text_bottom = "♪ Y pasarás un campo helado que te sigue cortando\nsin parar de nevar ♪";
    } else if (page == 32){ text_bottom = "♪ Entrarás a un amplio desierto... ♪";
    } else if (page == 33){ text_bottom = "♪ ...que se llama Pancuetlacalóyan ♪";
    } else if (page == 34){ text_bottom = "♪ Donde un viento que sopla muy fuerte\nte lleva flotando sin nunca ir de frente ♪";
    } else if (page == 35){ text_bottom = "♪ Al salirte te estarán esperando\ncon mil flechas para acribillarte ♪";
    } else if (page == 36){ text_bottom = "♪ Y cuando hayas cruzado este umbral\nun jaguar saltará sobre ti a devorarte ♪";
    } else if (page == 37){ text_bottom = "♪ Y con sólo tu esqueleto flotarás por negras aguas... ♪";
    } else if (page == 38){ text_bottom = "♪ ...para que reflexiones y así llegar al Mictlán ♪";
    } else if (page == 39){ text_bottom = "♪ ¡Luego... ♪";
    } else if (page == 40){ text_bottom = "♪ ...los dos dioses te deboran... ♪";
    } else if (page == 41){ text_bottom = "♪ ...y te dejan convertirte... ♪";
    } else if (page == 42){ text_bottom = "♪ ...uno con el universo! ♪";
    } else if (page == 43){ text_bottom = "♪ ... ♪";
    } else if (page == 44){ text_bottom = "♪ ¡FELIZ DÍA DE MUERTOS! ♪";
    } else if (page == 45){ text_bottom = "♪ ¡AY LARAILAILARÁAAA! ♪";
  }
}

void mouseClicked() {
  if (mouseX>0 && mouseX<37 && mouseY>0 && mouseY<37 && page!=01) {
    page--;
    counter = 0;
    text_bottom_y = 284;
  }
  
  if (mouseX>width-37 && mouseX<width && mouseY>0 && mouseY<37 && page!=45) {
    page++;
    counter = 0;
    text_bottom_y = 284;
  }
}
