# Pong
int posx=50+width/2;
int posy= height/2;
int vx=3;
int vy=3;

void setup(){
size(500,600);
background(50);
}


void draw(){
 posx= vx+posx; 
 posy= vy+posy;
 
 background(0); #usaremos un fondo negro
 fill(100); #aplicamos color
 rect(mouseX-100, height-width/4,150,15); #dibujamos la barra
 fill(10+posy/3); #cambiaremos el color de la bola dependiendo de la posición de esta en y
 ellipse(posx,posy,20,20); #dibujamos la bola
 fill(10+posy/3); #aplicamos color
 textSize(15); #tamaño de la fuente 
 text("SCORE", 20, 30); #usamos texto SCORE

 
 if(posx>=width){
 vx=-vx; #si la pelota llega al borde derecho, rebota
 }  
 if(posx<=0){
 vx=-vx; #si la pelota llega al borde izquierdo, rebota
 }
 if(posy<=0){
 vy=-vy; #si la pelota toca el borde superior, rebota
 }
 if(posy>=height+10){
   vx=0;
   vy=0;  #si la pelota toca el borde inferior, se para
 }
 if(vx==0 && vy==0){
 background(0); #si la pelota toca el borde inferior y se para, se cambia a un fondo negro
 fill(200-mouseY/3); #añadimos el color, que cambia según la posición del ratón
 textSize(80); #tamaño de la fuente
 text("GAME OVER", 20, 200); #usamos el texto GAME OVER


 }
 if(posx<=mouseX+150/2 && posx>=mouseX-150/2){
   if(posy>= 600-500/4-15 && posy <=(600-500/4-15)+15){
	vy=-vy; #si la pelota toca la barra, rebota
   }
 }

}
