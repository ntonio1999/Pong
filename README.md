# Pong
int posx=50+width/2;
int posy= height/2;
int vx=2;
int vy=2;
int posx1=50+width/2;
int posy1= height/2;
int vx1=4;
int vy1=4;
int score=0;
int score1=10;
int start=0;

void setup(){
size(500,600);
background(50);
}


void draw(){

 start=0;

 background(0);
 textSize(30);
 text("PRESS ‘S’ TO START THE GAME", 35, 300);
 




   if (key == 's' || key == 's') {
     start=start+1;
   }
   
   if (start==1){
   background(0);
   fill(100);
   rect(mouseX-100, height-width/4,140,15);
   fill(10+posy/3);
   ellipse(posx,posy,25,25); 
   fill(10+posy/3);
   textSize(15);
   text("SCORE:", 20, 30);  
   textSize(25);
   text("LEVEL 1", 400, 30);
   fill(100+posy/5);
   textSize(20);
   text(score, 20, 50);
   
    posx= vx+posx;
    posy= vy+posy; 




 
   if(posx>=width){
     vx=-vx;
     }  
   if(posx<=0){
     vx=-vx;
     }
    if(posy<=0){
     vy=-vy;
     }
   if(posy>=height+10){
     vx=0;
     vy=0;
     }
   if(vx==0 && vy==0){
     background(0);
     fill(200-mouseY/3);
     textSize(80);
     text("GAME OVER", 20, 200);
     }

 
 if(posx<=mouseX+140/2 && posx>=mouseX-140/2){
   if(posy>= 600-500/4-15 && posy <=(600-500/4-15)+15){
  vy=-vy;
  score=score+1;
   }
    }


 if(score>=10){

 background(0);
 fill(100);
 rect(mouseX-100, height-width/4,150,15);
 fill(10+posy/3);
 ellipse(posx,posy,20,20); 
 fill(10+posy1/3);
 ellipse(posx1,posy1,15,15);
 fill(10+posy1/3);
 textSize(15);
 text("SCORE:", 20, 30);
    textSize(25);
   text("LEVEL 2", 400, 30);
 fill(100+posy1/5);
 textSize(20);
 text(score1, 20, 50);

 posx=0;
 posy=0;
 posx1= vx1+posx1;
 posy1= vy1+posy1;


if(posx1>=width){
 vx1=-vx1;
 }  
 if(posx1<=0){
 vx1=-vx1;
 }
 if(posy1<=0){
 vy1=-vy1;
 }
 if(posy1>=height+10){
   vx1=0;
   vy1=0;
 }
 
   if(vx1==0 && vy1==0){
 background(0);
 fill(200-mouseY/3);
 textSize(80);
 text("GAME OVER", 20, 200); 
 

   }
 }
 if(posx1<=mouseX+150/2 && posx1>=mouseX-150/2){
   if(posy1>= 600-500/4-15 && posy1 <=(600-500/4-15)+15){
  vy1=-vy1;
  score1=score1+1;
   }
    }

    }

 }
 
