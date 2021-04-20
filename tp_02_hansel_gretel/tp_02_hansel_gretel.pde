int alpha;

void setup() {
  //back
  size(450,600);
  background(#3A502C);
  
  //ground
  noStroke();
  fill(#9D9C8A);
  ellipse(316,510,155,43);
  ellipse(211,517,53,23);
  ellipse(224,489,44,17);
  ellipse(192,485,20,10);
  ellipse(178,477,12,6);
  
  //hongos
  fill(#BFCD98);
  quad(8,528,19,529,16,541,7,540);
  fill(#AB8437);
  quad(3,525,18,514,30,528,15,531);
  quad(16,552,30,533,53,535,38,552);
  quad(52,530,70,530,84,546,61,547);
  fill(#BFCD98);
  quad(32,552,41,548,46,561,38,564);
  quad(57,541,67,545,62,562,54,559);
  
  //arboles fondo
  fill(#30433D);
  quad(49,306,133,336,111,187,58,191);
  quad(49,306,111,191,133,0,40,0);
  quad(130,248,158,0,225,0,244,305);
  quad(292,0,349,0,361,143,337,147);
  quad(395,0,416,95,399,140,450,154);
  quad(450,154,450,0,394,0,394,0);
  
  //casa
  //casa base
  fill(#EFCC94);
  quad(295,480,300,300,450,300,450,525);
  quad(300,300,320,210,450,210,450,300);
  //techo decor back
  fill(#BFCC9E);
  quad(289,210,287,184,293,162,344,168);
  //techo back
  fill(#60382C);
  quad(255,295,300,180,340,180,300,300);
  //puerta
  fill(#BC8C5B);
  quad(339,293,377,293,380,505,339,493);
  //techo front
  fill(#73402D);
  quad(300,180,450,180,450,302,360,300);
  //techo front top 1
  fill(#D9DBC3);
  quad(313,180,450,180,450,292,365,290);
  //techo decor bot
  fill(#BFCC9E);
  quad(293,162,322,210,359,167,357,143);
  quad(356,143,450,156,450,200,336,190);
  //chimenea decor back
  fill(#BFCC9E);
  quad(383,83,407,83,405,130,385,135);
  //chimenea
  fill(#968744);
  quad(380,86,402,86,400,150,378,150);
  //chimenea decor
  fill(#BFCC9E);
  quad(360,145,378,132,402,152,379,153);
  quad(390,156,400,136,406,138,424,159);
  quad(378,125,379,83,404,83,390,109);
  
  //arbol top casa
  fill(#527F48);
  triangle(450,113,450,160,418,166);
  triangle(450,154,450,205,415,212);
  triangle(450,187,450,255,412,261);
  triangle(450,246,450,286,415,291);
  triangle(450,281,450,315,423,313);
  
  //gretel 1
  //pies
  fill(#E4BD94);
  quad(105,503,100,514,137,514,130,502);
  //vestido
  fill(#C1552F);
  quad(66,485,94,436,145,432,145,503);
  quad(145,502,111,506,90,501,66,484);
  quad(111,437,118,419,138,418,139,446);
  ellipse(124,402,34,41);
  
  //cabeza hansel
  //cuello
  fill(#D9A387);
  quad(147,400,156,400,156,411,147,411);
  //sombrero bot
  fill(#191708);
  quad(153,363,164,356,171,356,165,367);
  //cabeza
  fill(#D9A387);
  ellipse(150,382,38,38);
  //pelo 1
  fill(#754918);
  quad(131,380,149,362,165,364,176,380);
  quad(130,385,136,376,146,379,137,389);
  //sombrero top
  fill(#191708);
  quad(127,388,123,372,139,361,155,362);
  
  //gretel 2
  //cara
  fill(#E4BD94);
  ellipse(127,401,33,37);
  //gorro
  fill(#C1552F);
  triangle(119,382,119,421,90,404);
  //pelo
  fill(#ECD17A);
  quad(120,383,128,393,112,413,111,390);
  quad(120,383,129,382,136,384,142,392);
  //vestido top
  fill(#ECE9DA);
  quad(118,436,145,436,150,487,97,483);
  
  //hanzel
  //pies y brazo der
  fill(#D9A387);
  quad(143,498,166,492,164,506,139,516);
  quad(139,516,163,501,176,514,155,523);
  quad(165,426,198,443,184,452,163,429);
  //remera bot
  fill(#ECE9DA);
  quad(137,420,144,409,159,408,168,414);
  quad(168,414,167,430,146,433,142,415);
  //remera top
  fill(#754918);
  quad(147,433,150,416,164,414,168,429);
  //pant
  fill(#1C3049);
  quad(141,433,170,427,170,498,137,498);
  //tirantes
  stroke(#231806);
  strokeWeight(4);
  line(145,409,152,433);
  line(160,408,165,430);
  noStroke();
  //brazo izq
  fill(#D9A387);
  quad(139,418,147,420,143,440,136,441);
  quad(142,438,168,455,159,464,136,441);
  
  //brazo gretel
  fill(#E4BD94);
  quad(123,441,139,417,146,424,130,447);
  
  //bruja
  //pelo bot
  fill(#BED6C6);
  quad(208,349,198,368,210,400,226,362);
  //piel
  fill(#CBA785);
  quad(207,349,230,348,235,373,211,395);
  quad(210,365,197,373,195,387,213,373);
  quad(285,500,322,492,330,515,270,515);
  //pantufla
  fill(#232517);
  quad(250,505,285,504,308,520,268,520);
  //mano baston
  fill(#CBA785);
  ellipse(221,408,28,21);
  //baston
  fill(#9F7B3F);
  ellipse(222,409,9,8);
  stroke(#9F7B3F);
  strokeWeight(10);
  line(227,460,227,512);
  noStroke();
  //vestido mano
  fill(#42412F);
  quad(214,418,250,365,291,415,215,478);
  //pelo top
  fill(#BED6C6);
  quad(221,361,231,448,235,405,232,372);
  //vestido main
  fill(#42412F);
  quad(200,348,225,342,348,389,265,418);
  quad(348,389,365,488,265,509,269,403);
  //mano fea
  fill(#CBA785);
  quad(197,407,217,420,217,430,200,434);
  quad(174,424,198,408,198,415,180,423);
  
  //bottom
  fill(#FCF6D6);
  rect(0,580,450,20);
  
  //text
  fill(#000000);
  textSize(12);
  textAlign(CENTER);
  text("\"DON'T BE AFRAID, MY LITTLE DEARS,\" SAID THE WITCH",225,594);
  
  alpha = 0;
}

//velocidad de fade in
void mouseClicked() {
  alpha = 4;
}

//gato
void draw() {
  //cola
  fill(#000000,0);
  strokeWeight(10);
  stroke(#000000,alpha);
  curve(250,331,310,347,340,320,380,300);
  
  //cuerpo
  strokeWeight(0);
  stroke(#000000,0);
  fill(#000000,alpha);
  ellipse(285,355,60,50);
  ellipse(250,350,30,31);
  triangle(235,345,230,325,250,335);
  triangle(250,335,265,325,262,350);
}
