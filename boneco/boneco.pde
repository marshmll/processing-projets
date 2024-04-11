float xPos, yPos;
int dummyWidth;
float incrementer;

void setup() {
  size(600, 600);
  xPos = width/2;
  yPos = height/2;
  dummyWidth = height/2;
  incrementer = 0.0;
  frameRate(60);
}

void draw() {
  background(255);
  drawDummy(xPos, yPos, dummyWidth, #FF0000);
  
  yPos = yPos + cos(incrementer);
  
  incrementer += 0.1;
}

void drawDummy(float x, float y, int dummyWidth, color clr) {
  int eyeXOffset = 80;
  int eyeYOffset = 40;
  
  fill(clr);
  circle(x, y, dummyWidth);
  
  fill(255);
  circle(xPos - eyeXOffset, yPos - eyeYOffset, 80);
  circle(xPos + eyeXOffset, yPos - eyeYOffset, 80);
    
  noFill();
  strokeWeight(1);
  arc(xPos, yPos + 80, 100 + 10 * sin(incrementer), 80, 0, PI);
  
  fill(0);  
  circle(xPos + sin(incrementer) * 10 + - eyeXOffset, yPos- eyeYOffset, 30);
  circle(xPos + sin(incrementer) * 10 + eyeXOffset, yPos - eyeYOffset, 30);
}
