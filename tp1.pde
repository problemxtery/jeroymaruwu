int y,x, tiempo; //numeros enteros 
String r; //variable de texto 
PImage fondo, coralrosado, coralceleste;
PFont fuente;

void setup(){
  imageMode(CENTER); //pone la imagen en el centro
  textAlign(CENTER); //pone el texto en el centro
  size(600,300);
  background(0);
  y = height+20; //le da valor a los int
  x = width/2;
  r = "Barbie una aventura de sirenas";
  tiempo = 0;
  //fuente
  fuente=createFont("Vogue.ttf", 30);
  textFont(fuente);
  // coral rosado
  coralrosado=loadImage("coralrosado.png");
  coralrosado.resize(180,90);
 // coral celeste
 coralceleste=loadImage("coralceleste.png");
 coralceleste.resize(75,100);
  
}
void draw(){
  background(0);
  image(fondo,width/2,height/2);
  //pantalla 1 
  if( tiempo > 0 && tiempo < 350 ){ //entre ese tiempo va a pasar tal cosa
    text( r, x, y ); //texto y ubicacion
    y--; //hace q vaya para arriba
  } else if( y < -10) { y = height+20; } /*si el valor de igriega 
  es menor a -10 se reinicia*/

  
  //pantalla 2
  if( tiempo > 350 && tiempo < 670 ){
    r = "ESTOY INTERNADO";
    text( r, x, y );
    y--;
  }  else if( y < -50) { y = height+20; }
  
  tiempo ++;
  println( "y" + y );
  println( "time"+tiempo);
}
