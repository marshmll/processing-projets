final float MIN_X = 500;
final float MAX_X = 500;
final color corDoCarro = #00FF00; // Vermelho
float escala = 1;

float deslocamento;
float velocidade;

void setup()
{  
  size(800, 600);
  surface.setResizable(true);
  
  deslocamento = 0;
  velocidade = 0;
  frameRate(60);
}

void draw()
{  
  // Deslocamento do carro
  if (keyPressed) {
    if (keyCode == RIGHT)
      velocidade += .5;
    else if (keyCode == LEFT)
      velocidade -= .5;
    else if (key == '+')
      escala += 0.01;
    else if (key == '-')
      escala -= 0.01;
  }
  else if (velocidade > 0) velocidade -= .5;
  else if (velocidade < 0) velocidade += .5;
  
  deslocamento += velocidade; 
  
  // Grama
  background(#2F5F25);
  
  // Rua
  noStroke();
  fill(#2E2E2E);
  rect(0, 400 * escala, width, 200 * escala);
  
  // Faixas
  fill(#BCB34C);
  
  for (int i = 0; i < width/100/escala; i++) {
    rect(100 * i * escala, 500 * escala, 50 * escala, 15 * escala);
  }
  
  /*
    Carro
  */
  
  // Carenagem
  fill(corDoCarro);
  rect((100 + deslocamento) * escala, 350 * escala, 200 * escala, 100 * escala, 100 * escala);
  circle((200 + deslocamento) * escala, 350 * escala, 100 * escala);
  
  // Pneus
  fill(0);
  circle((150 + deslocamento) * escala, 450 * escala, 50 * escala);
  circle((250 + deslocamento) * escala, 450 * escala, 50 * escala);
  
  // Rodas
  fill(#141414);
  circle((150 + deslocamento) * escala, 450 * escala, 20 * escala);
  circle((250 + deslocamento) * escala, 450 * escala, 20 * escala);
  
  // Vidro
  fill(#92E2E5);
  rect((180 + deslocamento) * escala, 320 * escala, 50 * escala, 30 * escala);
  
  // Farol
  fill(#FFFFFF);
  stroke(0);
  circle((280 + deslocamento) * escala, 380 * escala, 20 * escala);
}
