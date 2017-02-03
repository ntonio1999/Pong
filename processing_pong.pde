int start=0; //definimos la variable para que comience el juego

int posx=50+width/2; //posición de la bola del nivel 1 en X
int posy= height/2; //posición de la bola del nivel 1 en Y
int vx=2; //velocidad en X de la bola del nivel 1
int vy=2; //velocidad en Y de la bola del nivel 1
int score1=0; //puntuación inicial en el nivel 1
int posxrec= 340; //posición del rectángulo del nivel 1 en X
int posyrec= 200; //posición del rectángulo del nivel 1 en Y
int golpeon1= 0; //golpeo al rectángulo del nivel 1
int anchorec=30; //ancho del rectángulo del nivel 1 
int largorec=55; //largo del rectángulo del nivel 1

int posx1=50+width/2; //posición de la bola 1 del nivel 2 en X
int posy1= height/2; //posición de la bola 1 del nivel 2 en Y
int vx1=3; //velocidad en X de la bola 1 del nivel 2
int vy1=3; //velocidad en Y de la bola 1 del nivel 2
int posx2=width/2+25; //posición de la bola 2 del nivel 2 en X
int posy2= height/2; //posición de la bola 2 del nivel 2 en Y
int vx2=-3; //velocidad en X de la bola 2 del nivel 2
int vy2=4; //velocidad en Y de la bola 2 del nivel 2
int posxrec1= 320; //posición del rectángulo 1 del nivel 2 en X
int posyrec1= 200; //posición del rectángulo 1 del nivel 2 en Y
int posxrec2= 240; //posición del rectángulo 2 del nivel 2 en X
int posyrec2= 320; //posición del rectángulo 2 del nivel 2 en Y
int golpeon2= 0; //golpeo al rectángulo 1 del nivel 2
int golpeon3= 0; //golpeo al rectángulo 2 del nivel 2
int anchorec1=30; //ancho del rectángulo 1 del nivel 2
int largorec1=55; //largo del rectángulo 1 del nivel 2
int anchorec2=30; //ancho del rectángulo 2 del nivel 2
int largorec2=55; //largo del rectángulo 2 del nivel 2 
int score2=100; //puntuación inicial en el nivel 2

int posx3=0; //posición de la bola 1 del nivel 3 en X
int posy3= 0; //posición de la bola 1 del nivel 3 en Y
int vx3=5; //velocidad en X de la bola 1 del nivel 3
int vy3=6; //velocidad en Y de la bola 1 del nivel 3
int posx4=300; //posición de la bola 2 del nivel 3 en X
int posy4= height/2; //posición de la bola 2 del nivel 3 en Y
int vx4=3; //velocidad en X de la bola 2 del nivel 3
int vy4=3; //velocidad en Y de la bola 2 del nivel 3
int posxrec4= 385; //posición del rectángulo del nivel 3 en X
int posyrec4= 40; //posición del rectángulo del nivel 3 en Y
int golpeon4= 0; //golpeo al rectángulo del nivel 3
int anchorec4=30; //ancho del rectángulo del nivel 3
int largorec4=55; //largo del rectángulo del nivel 3
int score3=300; //puntuación inicial en el nivel 3

void setup() {
  size(500, 600); //tamaño de la pantalla
  background(50); //color de fondo
}


void draw() {

  start=0; //variable start igual a 0

  background(0); //color de fondo
  textSize(30); //tamaño de fuente
  text("PRESS ‘S’ TO START THE GAME", 35, 300); //texto

  if (key == 's' || key == 's') { //si la tecla s se pulsa, comienza el juego
    start=start+1;
  }

  if (start==1) { //al comenzar el juego
    background(0); //color de fondo
    fill(100); //color de relleno
    rect(mouseX-100, height-width/4, 140, 15); //barra del pong
    fill(10+posy/3); //color de fuente
    textSize(15); //tamaño de fuente
    text("SCORE:", 20, 30);  //texto
    textSize(25); //tamaño de fuente
    text("LEVEL 1", 400, 30); //texto
    fill(100+posy/5); //color de fuente
    textSize(20); //tamaño de fuente
    text(score1, 20, 50); //texto

    posx= vx+posx; //posición en x
    posy= vy+posy; //posición en y


    if (posx<=posxrec+largorec/2 && posx>=posxrec-largorec/2) { //si la bola golpea el rectángulo
      if (posy<=posyrec+anchorec/2 && posy>=posyrec-anchorec/2) { 
        golpeon1=golpeon1+1;
      }
    }

    if (golpeon1==0) { //si no ha golpeado aún
      fill(#FF8400); //color de relleno
      ellipse(posx, posy, 25, 25); //bola
      fill(#FF8400); //color de relleno
      rect(posxrec, posyrec, largorec, anchorec); //rectángulo
    }

    if (golpeon1>=1) { //al golpear
      fill(0); //relleno
      rect(posxrec, posyrec, largorec, anchorec); //rectángulo
      fill(#FF8400); //relleno
      ellipse(posx, posy, 25, 25); //bola
      score1=score1+100; //puntuación
    }

    if (posx>=width) { //la pelota rebota al tocar la pared
      vx=-vx;
    }  
    if (posx<=0) { //la pelota rebota al tocar la pared
      vx=-vx;
    }
    if (posy<=0) { //la pelota rebota al tocar la pared
      vy=-vy;
    }
    if (posy>=height+10) { //la pelota rebota al tocar la pared
      vx=0;
      vy=0;
    }
    if (vx==0 && vy==0) { //si la bola cae, se pierde el juego
      background(0);
      fill(200-mouseY/3);
      textSize(80);
      text("GAME OVER", 20, 200);
    }


    if (posx<=mouseX+140/2 && posx>=mouseX-140/2) { //la pelota rebota al tocar la barra
      if (posy>= 600-500/4-15 && posy <=(600-500/4-15)+15) {
        vy=-vy;
      }
    }


    if (score1>=100) { //cuando la puntuación llegue a 100, se cambia de nivel

      background(0); //color de fondo
      fill(100); //color de relleno
      rect(mouseX-100, height-width/4, 150, 15); //barra del pong
      fill(10+posy1/3); //color de fuente
      textSize(15); //tamaño de fuente
      text("SCORE:", 20, 30); //texto
      textSize(25); //tamaño de fuente
      text("LEVEL 2", 400, 30); //texto
      textSize(20); //tamaño de fuente
      text(score2, 20, 50); //texto

      posx=0;
      posy=0;
      posx1= vx1+posx1;
      posy1= vy1+posy1; 
      posx2= vx2+posx2;
      posy2= vy2+posy2;


      if (posx1>=width) { //la pelota rebota al tocar la pared
        vx1=-vx1;
      }  
      if (posx1<=0) { //la pelota rebota al tocar la pared
        vx1=-vx1;
      }
      if (posy1<=0) { //la pelota rebota al tocar la pared
        vy1=-vy1;
      }
      if (posy1>=height+20) { //la pelota rebota al tocar la pared
        vx1=0;
        vy1=0;
      }

      if (posx1<=mouseX+150/2 && posx1>=mouseX-150/2) { //la pelota rebota al tocar la barra
        if (posy1>= 600-500/4-15 && posy1 <=(600-500/4-15)+15) {
          vy1=-vy1;
        }
      }

      if (posx2>=width) { //la pelota rebota al tocar la pared
        vx2=-vx2;
      }  
      if (posx2<=0) { //la pelota rebota al tocar la pared
        vx2=-vx2;
      }
      if (posy2<=0) { //la pelota rebota al tocar la pared
        vy2=-vy2;
      }
      if (posy2>=height+20) { //la pelota rebota al tocar la pared
        vx2=0;
        vy2=0;
      }

      if (posx2<=mouseX+150/2 && posx2>=mouseX-150/2) { //la pelota rebota al tocar la barra
        if (posy2>= 600-500/4-15 && posy2 <=(600-500/4-15)+15) {
          vy2=-vy2;
        }
      }


      if (posx1<=posxrec1+largorec1/2 && posx1>=posxrec1-largorec1/2) { //si la bola golpea el rectángulo 1
        if (posy1<=posyrec1+anchorec1/2 && posy1>=posyrec1-anchorec1/2) { 
          golpeon2=golpeon2+1;
        }
      }

      if (golpeon2==0) { //si no ha golpeado el rectángulo 1
        fill(#5D63FF);
        ellipse(posx1, posy1, 25, 25); 
        fill(#5D63FF);
        rect(posxrec1, posyrec1, largorec1, anchorec1);
      }

      if (golpeon2>=1) { //al golpear el rectángulo 1
        fill(0);
        rect(posxrec1, posyrec1, largorec1, anchorec1);
        fill(#17CE37);
        ellipse(posx1, posy1, 25, 25);
      }

      if (posx2<=posxrec2+largorec2/2 && posx2>=posxrec2-largorec2/2) { //si la bola golpea el rectángulo 2
        if (posy2<=posyrec2+anchorec2/2 && posy2>=posyrec2-anchorec2/2) { 
          golpeon3=golpeon3+1;
        }
      }

      if (golpeon3==0) { //si no ha golpeado el rectángulo 2
        fill(#17CE37);
        ellipse(posx2, posy2, 25, 25); 
        fill(#17CE37);
        rect(posxrec2, posyrec2, largorec1, anchorec2);
      }

      if (golpeon3>=1) { //al golpear el rectángulo 2
        fill(0);
        rect(posxrec2, posyrec2, largorec2, anchorec2);
        fill(#FF5DC6);
        ellipse(posx2, posy2, 25, 25);
      }

      if (golpeon2>=1 && golpeon3==0) {
        score2=200;
      }   
      if (golpeon3>=1 && golpeon2==0) {
        score2=200;
      }
      if (golpeon2>=1 && golpeon3>=1) {
        score2=300;
      }

      if (vx1==0 && vy1==0) { //si la bola cae, se pierde el juego
        background(0);
        fill(200-mouseY/3);
        textSize(80);
        text("GAME OVER", 20, 200);
      }


      if (vx2==0 && vy2==0) { //si la bola cae, se pierde el juego
        background(0);
        fill(200-mouseY/3);
        textSize(80);
        text("GAME OVER", 20, 200);
      }
    }

    if (score2>=300) { //si la puntuación llega a 300, se cambia de nivel
      background(0);
      fill(100);
      rect(mouseX-100, height-width/4, 150, 15);
      rect(157, 0, 20, height-width/4-5);
      fill(10+posy3/3);
      textSize(15);
      text("SCORE:", 20, 30);
      textSize(25);
      text("LEVEL 3", 400, 30);
      textSize(20);
      text(score3, 20, 50);
      fill(#F51B02);
      ellipse(posx3, posy3, 20, 20);

      posx3= vx3+posx3;
      posy3= vy3+posy3;       
      posx4= vx4+posx4;
      posy4= vy4+posy4; 


      if (posx3>=140) { //la pelota rebota al tocar la pared
        vx3=-vx3;
      }  
      if (posx3<=0) { //la pelota rebota al tocar la pared
        vx3=-vx3;
      }
      if (posy3<=0) { //la pelota rebota al tocar la pared
        vy3=-vy3;
      }
      if (posy3>=height+10) { //la pelota rebota al tocar la pared
        vx3=0;
        vy3=0;
      }

      if (posx3<=mouseX+150/2 && posx3>=mouseX-150/2) { //la pelota rebota al tocar la barra
        if (posy3>= 600-500/4-15 && posy3 <=(600-500/4-15)+15) {
          vy3=-vy3;
        }
      }


      if (posx4>=width) { //la pelota rebota al tocar la pared
        vx4=-vx4;
      }  
      if (posx4<=184) { //la pelota rebota al tocar la pared
        vx4=-vx4;
      }
      if (posy4<=0) { //la pelota rebota al tocar la pared
        vy4=-vy4;
      }
      if (posy4>=height+10) { //la pelota rebota al tocar la pared
        vx4=0;
        vy4=0;
      }

      if (posx4<=mouseX+150/2 && posx4>=mouseX-150/2) { //la pelota rebota al tocar la barra
        if (posy4>= 600-500/4-15 && posy4 <=(600-500/4-15)+15) {
          vy4=-vy4;
        }
      }


      if (posx4<=posxrec4+largorec4/2 && posx4>=posxrec4-largorec4/2) { //si se golpea el rectángulo
        if (posy4<=posyrec4+anchorec4/2 && posy4>=posyrec4-anchorec4/2) { 
          golpeon4=golpeon4+1;
        }
      }

      if (golpeon4==0) { //antes de golpear el rectángulo
        fill(#17CE37);
        ellipse(posx4, posy4, 20, 20); 
        fill(#17CE37);
        rect(posxrec4, posyrec4, largorec4, anchorec4);
      }

      if (golpeon4>=1) { //al golpear el rectángulo
        fill(0);
        rect(posxrec4, posyrec4, largorec4, anchorec4);
        fill(#17CE37);
        ellipse(posx4, posy4, 20, 20);
        score3=400;
      }


      if (vx3==0 && vy3==0) { //si la bola cae, se pierde el juego
        background(0);
        fill(200-mouseY/3);
        textSize(80);
        text("GAME OVER", 20, 200);
      }
      if (vx4==0 && vy4==0) { //si la bola cae, se pierde el juego
        background(0);
        fill(200-mouseY/3);
        textSize(80);
        text("GAME OVER", 20, 200);
      }
    }

    if (score3>=400) { //se gana cuando la puntuación sea 400

      background(200-mouseY/4);
      textSize(60);
      fill(0+mouseY/4);
      text(" YOU WIN", 35, 300);
      fill(100+mouseX/4);
      textSize(20);
      text("SCORE:400", 105, 400);
      fill(0+mouseY/4);
      rect(35, 300, 300, 5);
    }
  }
}