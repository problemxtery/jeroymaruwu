float y, x, iy, dy, tiempo; //numeros enteros 
String r, j; //variable de texto 
PImage fondo, coralrosado, coralceleste;
PFont fuente;
float vel;

void setup() {
  imageMode(CENTER); //pone la imagen en el centro
  textAlign(CENTER); //pone el texto en el centro
  size(600, 300);
  background(0);
  y = height+20; //le da valor a los int
  x = width/2;
  r = "Barbie una aventura \n de sirenas";
  iy = height+50;
  dy = -50;
  tiempo = 0;
  vel=0.5;
  fondo=loadImage("fondo.png");
  //fuente
  fuente=createFont("Vogue.ttf", 30);
  textFont(fuente);
  // coral rosado
  coralrosado=loadImage("coralrosado.png");
  coralrosado.resize(180, 90);
  // coral celeste
  coralceleste=loadImage("coralceleste.png");
  coralceleste.resize(75, 100);
}
void draw() {
  background(0);
  image(fondo, width/2, height/2);
  //pantalla 1 texto
  if ( tiempo > 0 && tiempo < 350 ) { //entre ese tiempo va a pasar tal cosa
    text( r, x, y ); //texto y ubicacion
    y--; //hace q vaya para arriba
  } else if ( y < -10) { 
    y = height+20;
  } /*si el valor de igriega 
   es menor a -10 se reinicia*/

  //pantalla 1 imagenes
  if ( tiempo > 0 && tiempo < 900 ) { 
    image (coralrosado, width/2-200, iy+40);
    iy=iy-vel;
    image (coralceleste, width/2+200, dy);
    dy=dy+vel;
  } else if (iy < -50 && dy > height+50) { 
    iy = height+50;
    dy = -50;
  } 

  //pantalla 2 texto
  if ( tiempo > 450 && tiempo < 780 ) {
    textSize(20);
    r = "Directed by \n William Lau";
    text( r, x, y );
    y--;
  } else if ( y < -50) { 
    y = height+20;
  }

  //pantalla 2 imagen
  if ( tiempo > 900 && tiempo < 1800 ) { 
    image (coralrosado, width/2-200, iy+40);
    iy=iy-vel;
    image (coralceleste, width/2+200, dy);
    dy=dy+vel;
  } else if (iy < -50 && dy > height+50) { 
    iy = height+50;
    dy = -50;
  } 

  //pantalla 3 texto
  if ( tiempo > 780 && tiempo < 1150 ) {
    textSize(20);
    r = "Written by \n Ellise Allen";
    text( r, x, y );
    y--;
  } else if ( y < -80) { 
    y = height+20;
  }

  //pantalla 4 texto
  if ( tiempo > 1150 && tiempo < 1500 ) {
    textSize(20);
    r = " Music by \n Bc Smith";
    text( r, x, y );
    y--;
  } else if ( y < -50) { 
    y = height+20;
  }



  tiempo ++;
  println( "y" + y );
  println( "time"+tiempo);
}
