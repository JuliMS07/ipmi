/*Martinez Santichi Julieta
comisión 3
tp3
Junio de 2026
Video: https://youtu.be/K4hVjek1hwU
*/

PImage miImagen;
float RadiodelaOnda = 0;
boolean OndaActivada = false;
float CentrodelaOndaX;
float CentrodelaOndaY;
float ondaR, ondaG, ondaB;

void setup () {
  size (800, 400);
   miImagen = loadImage ("18.jpg"); 
}

void draw () {
  background (203, 165, 112);
  
  if (OndaActivada) {
   RadiodelaOnda = RadiodelaOnda + 1;
 }
 
  translate (400, 0);
  image (miImagen, -400, 0, 400, 400);

  //cuadricula superior Izquierda
  pushMatrix ();
   translate (0, -5);
   Cuadricula (0, 0);
  popMatrix ();
  
 //cuadricula inferior Izquierda
  pushMatrix ();
   translate (0, 208);
   CuadriculaInferiorIzquierda (0, 0);
  popMatrix (); 
  
 //cuadricula superior Derecha
  pushMatrix ();
   translate (187, -6);
   CuadriculaSuperiorDerecha (0, 0);
  popMatrix (); 

 // cuadricula inferior Derecha
  pushMatrix (); 
   translate (398, 208);
   rotate (radians (180));
   translate (0, -198);
   Cuadricula (0, 0);
  popMatrix (); 
}

//Onda que cambia el color con cada Click
void mousePressed (){
  CentrodelaOndaX = mouseX;
  CentrodelaOndaY = mouseY;
  RadiodelaOnda = 0; 
  OndaActivada = true;
  
  ondaR = random (100, 255);
  ondaG = random (100, 255);
  ondaB = random (100, 255);
}

//Reiniciar la onda al tocar una tecla
void keyPressed (){
  OndaActivada = false;
  RadiodelaOnda = 0;
}
