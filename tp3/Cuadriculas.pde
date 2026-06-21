void Cuadricula (float trasladarX, float trasladarY) {
   for (int i = 0; i < 11; i++) {
    for (int j = 0; j < 11; j++){
       float posX = j * 17;
       float posY = i * 18; 
      
// asignación de colores 
   float ColorFilas;
   int Lineas = min (i, j);
   
   if (Lineas == 0) {
     ColorFilas = 20;}
   else if (Lineas == 1) {
     ColorFilas =50;}
   else if (Lineas == 2) {
     ColorFilas = 105;}
   else if (Lineas == 3) {
     ColorFilas = 166;}
   else if (Lineas == 4) {
     ColorFilas = 215;}
   else if (Lineas == 5) {
     ColorFilas = 255;}
   else if (Lineas == 6) {
     ColorFilas = 215; }
   else if (Lineas == 7) {
     ColorFilas = 166; }
   else if (Lineas == 8) {
     ColorFilas = 105;}
   else if (Lineas == 9) {
     ColorFilas = 50;}
   else {ColorFilas = 20;}
   
  //variables para el color final
  float rFinal = ColorFilas;
  float gFinal = ColorFilas;
  float bFinal = ColorFilas;
  float realX = posX;
  float realY = posY;
   
   //sumarle brillo al mouse
   float brilloMouse = calcularBrilloMouse (realX, realY, mouseX, mouseY);
   rFinal = rFinal + brilloMouse;
   gFinal = gFinal + brilloMouse;
   bFinal = bFinal + brilloMouse;
   
  //interactividad
  if (OndaActivada == true) {
    float DistanciaOnda = dist (CentrodelaOndaX, CentrodelaOndaY, realX, realY);
    if (DistanciaOnda > RadiodelaOnda - 30 && DistanciaOnda < RadiodelaOnda + 30);{
      rFinal = rFinal + ondaR;
      gFinal = gFinal + ondaG;
      bFinal = bFinal + ondaB;
    }
  }

   fill (rFinal, gFinal, bFinal);  
   noStroke ();
   quad ( 12 + posX, 9 + posY, 25 + posX, 11 + posY, 28 + posX, 25 + posY, 14 + posX, 22 + posY);  
  }
 }
}

void CuadriculaSuperiorDerecha (float trasladarX, float trasladarY) {
   for (int i = 0; i < 11; i++) {
    for (int j = 0; j < 11; j++){
       float posX = (10 - j) * 17;
       float posY = i * 18; 
      
// asignación de colores 
   float ColorFilas;
   int Lineas = min (i, j);
   
   if (Lineas == 0) {
     ColorFilas = 20;}
   else if (Lineas == 1) {
     ColorFilas =50;}
   else if (Lineas == 2) {
     ColorFilas = 105;}
   else if (Lineas == 3) {
     ColorFilas = 166;}
   else if (Lineas == 4) {
     ColorFilas = 215;}
   else if (Lineas == 5) {
     ColorFilas = 255;}
   else if (Lineas == 6) {
     ColorFilas = 215; }
   else if (Lineas == 7) {
     ColorFilas = 166; }
   else if (Lineas == 8) {
     ColorFilas = 105;}
   else if (Lineas == 9) {
     ColorFilas = 50;}
   else {ColorFilas = 20;} 
   
  //variables para el color final
  float rFinal = ColorFilas;
  float gFinal = ColorFilas;
  float bFinal = ColorFilas;
  float realX = posX;
  float realY = posY;
   
   //sumarle brillo al mouse
   float brilloMouse = calcularBrilloMouse (realX, realY, mouseX, mouseY);
   rFinal = rFinal + brilloMouse;
   gFinal = gFinal + brilloMouse;
   bFinal = bFinal + brilloMouse;
   
  //interactividad
  if (OndaActivada == true) {
    float DistanciaOnda = dist (CentrodelaOndaX, CentrodelaOndaY, realX, realY);
    if (DistanciaOnda > RadiodelaOnda - 30 && DistanciaOnda < RadiodelaOnda + 30);{
      rFinal = rFinal + ondaR;
      gFinal = gFinal + ondaG;
      bFinal = bFinal + ondaB;
    }
  }

   fill (rFinal, gFinal, bFinal); 
   noStroke ();
   quad ( 15 + posX, 11 + posY, 28 + posX, 9 + posY, 26 + posX, 22 + posY, 12 + posX, 25 + posY);  
  }
 }
}

void CuadriculaInferiorIzquierda (float trasladarX, float trasladarY) {
   for (int i = 0; i < 11; i++) {
    for (int j = 0; j < 11; j++){
       float posX = j * 17;
       float posY = (10 - i) * 18; 
      
// asignación de colores 
   float ColorFilas;
   int Lineas = min (i, j);
   
   if (Lineas == 0) {
     ColorFilas = 20;}
   else if (Lineas == 1) {
     ColorFilas =50;}
   else if (Lineas == 2) {
     ColorFilas = 105;}
   else if (Lineas == 3) {
     ColorFilas = 166;}
   else if (Lineas == 4) {
     ColorFilas = 215;}
   else if (Lineas == 5) {
     ColorFilas = 255;}
   else if (Lineas == 6) {
     ColorFilas = 215; }
   else if (Lineas == 7) {
     ColorFilas = 166; }
   else if (Lineas == 8) {
     ColorFilas = 105;}
   else if (Lineas == 9) {
     ColorFilas = 50;}
   else {ColorFilas = 20;}
 
  //variables para el color final
  float rFinal = ColorFilas;
  float gFinal = ColorFilas;
  float bFinal = ColorFilas;
  float realX = posX;
  float realY = posY;
   
  //sumarle brillo al mouse
   float brilloMouse = calcularBrilloMouse (realX, realY, mouseX, mouseY);
   rFinal = rFinal + brilloMouse;
   gFinal = gFinal + brilloMouse;
   bFinal = bFinal + brilloMouse;
   
  //interactividad
  if (OndaActivada == true) {
    float DistanciaOnda = dist (CentrodelaOndaX, CentrodelaOndaY, realX, realY);
    if (DistanciaOnda > RadiodelaOnda - 30 && DistanciaOnda < RadiodelaOnda + 30);{
      rFinal = rFinal + ondaR;
      gFinal = gFinal + ondaG;
      bFinal = bFinal + ondaB;
    }
  }

   fill (rFinal, gFinal, bFinal); 
   noStroke ();
   quad ( 12 + posX, 18 - 9 + posY, 25 + posX, 18 - 11 + posY, 28 + posX, 18 - 25 + posY, 14 + posX, 18 - 22 + posY);  
  }
 }
}

float calcularBrilloMouse (float x, float y, float mx, float my) {
  float DistanciaMouse  = dist (mx, my, x, y);
  
  if (DistanciaMouse < 120){
    float brillo = map (DistanciaMouse, 0, 120, 150, 0);
    return brillo;
  } else {
    return 0;
  }
}
