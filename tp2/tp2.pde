/*Martinez Santichi Julieta
comisión 1
tp2
Mayo de 2026*/

PImage img1, img2, img3, img4, img5, img6, img7;
PFont miFuente;

int pantalla = 1;
int tiempoRestado = 0; 

//imágenes
float banda1Y = -300;
float album1X = -300;
float clocks2= 0;
float X_Y2= 0;
float myloX = -300;
float conciertoX = 660;
float banda2X = -400;

//Textos
float txt1X = -600;  
float txt2Y = 500;   
float txt3Y = 500;  
float txt4X = 660;  
float txt5X = -600;  
float txt6X = 660;   

String texto1 = "Coldplay es una banda británica formada en Londres en 1997 por Chris Martin, Jonny Buckland, Guy Berryman y Will Champion, quienes se conocieron en la universidad.";
String texto2 = "Al principio tocaban en bares pequeños y lanzaron algunos EPs independientes hasta que en el 2000 sacaron su primer álbum, Parachutes, que los hizo conocidos gracias a canciones como 'Yellow'.";
String texto3 = "Con el tiempo lanzaron discos muy exitosos como 'A Rush of Blood to the Head' y 'X&Y', donde terminó de convertirse en una banda internacional gracias a temas como 'Clocks', 'The Scientist' y 'Fix You'.";
String texto4 = "Aunque comenzaron con un estilo más tranquilo y melancólico, después fueron cambiando su sonido y agregando más pop, electrónica y shows visuales mucho más grandes.";
String texto5 = "Coldplay también se volvió conocida por sus conciertos, especialmente por las pulseras de luces que usa el público y por la energía positiva que transmiten en vivo.";
String texto6 = "Hoy Coldplay es una de las bandas más famosas del mundo y sigue haciendo música después de más de 25 años, manteniendo canciones que marcaron a varias generaciones.";

void setup (){
  size (640, 480);
  
  img1 = loadImage ("banda1.jpg");
  img2 = loadImage ("album1.jpg");
  img3 = loadImage ("Clocks.jpg");
  img4 = loadImage ("X_Y.jpg");
  img5 = loadImage ("Mylo.jpg");
  img6 = loadImage ("concierto.jpg");
  img7 = loadImage ("banda2.jpg");
  
  miFuente = loadFont ("Calibri-22.vlw");
}

void draw (){
  background (12, 20, 45);
  
  //Pantalla 1
  if (pantalla == 1) {
    image (img1, 120, banda1Y, 400, 240);
    if (banda1Y < 40){
      banda1Y = banda1Y += 5;
    }
    
  textSize (22);  
  fill (255);
  text (texto1, txt1X, 320, 500, 130);
  if (txt1X < 70) {
    txt1X = txt1X += 8;
  }
  
  if ((millis () - tiempoRestado) > 9000) {
    pantalla = 2;
  }  
  }
  
  //Pantalla 2
  else if (pantalla == 2){
    background (110, 80, 25);
    image (img2, album1X, 110, 240, 240);
    if (album1X < 50){
      album1X += 6;
    }
    
  textSize (22);  
  fill (255);
  text (texto2, 340, txt2Y, 250, 300);
  if (txt2Y > 110) {
    txt2Y = txt2Y -= 6;
  }
    
  if ((millis () - tiempoRestado) > 18000) {
   pantalla = 3;
   }  
  }
  
  //Pantalla 3
  else if (pantalla == 3) {
    background (15, 60, 70);
    image (img3, 190 - clocks2/2, 140 - clocks2/2, clocks2, clocks2);
    image (img4, 450 - X_Y2/2, 140 - X_Y2/2, X_Y2, X_Y2);
    if (clocks2 < 200) {
      clocks2 += 5;
    }
    if (X_Y2 < 200) {
      X_Y2 += 5;
    }
    
  textSize (22);  
  fill (255);
  text (texto3, 70, txt3Y, 500, 150);
  if (txt3Y > 290) {
    txt3Y = txt3Y -= 5;
  }
 
    if ((millis () - tiempoRestado) > 27000) {
      pantalla = 4;
    }
  }
  
  //Pantalla 4
  else if (pantalla == 4) {
    background (75, 25, 70);
    image (img5, myloX, 40, 180, 180);
    if (myloX < 50) {
      myloX += 7;
    }
    
    image (img6, conciertoX, 260, 180, 180);
    if (conciertoX > 410) {
      conciertoX -= 7;
    }
    
  textSize (22);  
  fill (255);
  text (texto4,txt4X, 40, 320, 180);
  if (txt4X > 270) {
    txt4X = txt4X -= 7;
  }
  
  textSize (22);  
  fill (255);
  text (texto5, txt5X, 260, 320, 180);
  if (txt5X < 50) {
    txt5X = txt5X += 7;
  }
    
    if ((millis () - tiempoRestado) > 42000) {
      pantalla = 5;
    }
  }
  
  //Pantalla 5
  else if (pantalla == 5) {
    background (10, 40, 85);
    image (img7, banda2X, 40, 400, 220);
    if (banda2X < 120) {
       banda2X += 6;
    }
   
   if ((millis () - tiempoRestado) < 50000) {
     
     fill (255); 
     text (texto6, 70, txt6X, 500, 150);
     if (txt6X >290) {
       txt6X = txt6X -= 6;
     }
   } else {
     fill (0, 150, 255);
     rect (200, 320, 240, 55, 12);
     
     fill (255); 
     textSize (30);
     text ("Reiniciar", 265, 358);
   }
  }
 }

void mousePressed() {
  if (pantalla == 5) {
    if (mouseX > 200 && mouseX < 440 && mouseY > 320 && mouseY < 375) {
      pantalla = 1;
      tiempoRestado = millis(); 
      
      banda1Y = -300;
      album1X = -300;
      clocks2= 0;
      X_Y2= 0;
      myloX = -300;
      conciertoX = 660;
      banda2X = -400;
      txt1X = -600;  
      txt2Y = 500;   
      txt3Y = 500;  
      txt4X = 660;  
      txt5X = -600;  
      txt6X = 660;   
    }
  }
}   
    
    
    
