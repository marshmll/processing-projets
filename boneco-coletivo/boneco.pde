float dummyXPos, dummyYPos;
float dummySize;
float incrementer;

int carroXPos;
int carroYPos;
int carroSize;

float riscalaXPos;
float riscalaYPos;
float riscalaSize;

int ovoXPos;
int ovoYPos;
int ovoSize;

int bonecoBugadoXPos;
int bonecoBugadoYPos;
int bonecoBugadoSize;

void setup() {
  size(800, 800);
  
  dummyXPos = (width/2 * .5);
  dummyYPos = (height/2 * .5) + 350;
  dummySize = height/2 * .5;
  
  carroXPos = 10;
  carroYPos = 350;
  carroSize = 150;
  
  riscalaXPos = 400;
  riscalaYPos = dummyYPos;
  riscalaSize = 150;
  
  ovoXPos = 100;
  ovoYPos = 100;
  ovoSize = 100;
  
  bonecoBugadoXPos = 350;
  bonecoBugadoYPos = 250;
  bonecoBugadoSize = 250;
  
  incrementer = 0.0;
  frameRate(60);
}

void draw() {
  background(255);
  drawDummy(dummyXPos, dummyYPos, dummySize, #FF0000);
  dummyYPos = dummyYPos + cos(incrementer) * 1;
  
  carro(carroXPos, carroYPos, carroSize);
  
  riscalaYPos =  riscalaYPos + cos(incrementer) * 2;
  bonecoRiscala(riscalaXPos, riscalaYPos, riscalaSize);
  
  ovo(ovoXPos, ovoYPos, ovoSize);
  ovoXPos++;
  
  bonecoBugadao(bonecoBugadoXPos, bonecoBugadoYPos, bonecoBugadoSize);
  bonecoBugadoXPos--;
  
  incrementer += 0.1;
  carroXPos++;
}

void drawDummy(float x, float y, float dummyWidth, color clr) {
  int eyeXOffset = 40;
  int eyeYOffset = 20;
  
  stroke(0);
  strokeWeight(1);
  
  fill(clr);
  circle(x, y, dummyWidth);
  
  fill(255);
  circle(x - eyeXOffset, y - eyeYOffset, 50);
  circle(x + eyeXOffset, y - eyeYOffset, 50);
    
  noFill();
  strokeWeight(1);
  arc(x, y + 20, 50 + 10 * sin(incrementer), 80, 0, PI);
  
  fill(0);  
  circle(x + sin(incrementer) * 10 + - eyeXOffset, y - eyeYOffset, 15);
  circle(x + sin(incrementer) * 10 + eyeXOffset, y - eyeYOffset, 15);
}

void carro(int xp, int yp, int tam) {
  //desenho carro
  fill(#8B8D8E);
  ellipse(xp + tam/5, yp + tam/6, tam/4, tam/4);
  ellipse(xp + tam*2.5/2, yp + tam/6, tam/4, tam/4);
  
  fill(#75D8F2);
  stroke(0);
  strokeWeight(1);
  rect(xp, yp-tam*2/6, tam * 6/4, tam/2, 10);
  //
  fill(#FFFFFF);
  rect(xp, yp-tam*2/6, tam * 6/4, tam/2/2, 5);
  //
  fill(#FFFFFF);
  stroke(0);
  strokeWeight(1);
}

void bonecoRiscala(float xp, float yp, float tam){
     
  fill(#5ADBEA);
  circle(xp, yp, tam);
  fill(0);
  circle(xp - tam/5, yp, tam/6);
  circle(xp + tam/5, yp, tam/6);
 }
 
 void ovo(int xp, int yp, int tam){
  fill(#FFFFFF);
  ellipse(xp,yp,xp/2+yp/3,tam);
  
  fill(226, 176, 81);
  circle(xp, yp, tam/2);  
  //Olhos
  fill(#FFFFFF);
  circle(xp-tam/6, yp, tam/4);
  circle(xp+tam/6, yp, tam/4);
  //Pupilas
  fill(#0D98BA);
  circle(xp-tam/8, yp, tam/11);
  circle(xp+tam/8, yp, tam/11);
}

void bonecoBugadao(int xp, int yp, int tam) {
  fill(128,10,200);
  stroke(255);
  strokeWeight(10);
  
  fill(128,10,200);
  circle(xp, yp, tam);
  
  fill(129,100,255);
  circle(xp-tam/2, yp-tam/2, tam/2);
  circle(xp+tam/2, yp-tam/2, tam/2);
  
  fill(100,200,0);
  ellipse(190,140,30,30);
  ellipse(510,140,30,30);
  
  fill(0,0,0);
  ellipse(300, 200, 50, 50);
  ellipse(400, 200, 50, 50);
  
  
  fill(255,0,0);
  ellipse(350, 300, 100, 100);
  
  
  fill(128,10,200);
  circle(xp+2, yp+180, tam/2);
  ellipse(350,450,20,20);
  
  stroke(128,10,200);
  line(xp,yp+tam/1.8,xp+tam/2, yp+tam/2);
  stroke(128,500,200);
  line(xp,yp+tam/1.8,xp+tam/1.2, yp-tam/15);
}
