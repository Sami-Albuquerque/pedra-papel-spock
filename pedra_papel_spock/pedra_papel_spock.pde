int selecaoJogador, selecaoMaquina;
int aux = 1;
boolean selecionado, selecaoPronta, venceu, empate, brilhando;
String stringJogador, stringMaquina;

void setup(){
  size(800, 600);
  colorMode(HSB, 360, 100, 100);
  background(326, 30, 100);
  rectMode(CENTER);
  textAlign(CENTER);
  textSize(32);
  selecionado = false;
}

void draw(){
  stroke(241, 58, 59);
  strokeWeight(5);
  
  fill(241, 58, 100);
  rect(105, 500, 200, 100);
  rect(400, 500, 200, 100);
  rect(695, 500, 200, 100);
  rect(250, 350, 200, 100);
  rect(550, 350, 200, 100);
  
  ellipse(105, 450, 50, 50);
  ellipse(400, 450, 50, 50);
  ellipse(695, 450, 50, 50);
  ellipse(250, 300, 50, 50);
  ellipse(550, 300, 50, 50);
  
  if (mouseX > 5 && mouseX < 205 && mouseY > 450 && mouseY < 550) {
    fill(241, 50, 100);
    rect(105, 500, 200, 100);
    fill(57, 88, 100);
    ellipse(105, 450, 50, 50);
  }
  else if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
    fill(241, 50, 100);
    rect(400, 500, 200, 100);
    fill(57, 88, 100);
    ellipse(400, 450, 50, 50);
  }
  else if (mouseX > 595 && mouseX < 795 && mouseY > 450 && mouseY < 550) {
    fill(241, 50, 100);
    rect(695, 500, 200, 100);
    fill(57, 88, 100);
    ellipse(695, 450, 50, 50);
  }
  else if (mouseX > 150 && mouseX < 350 && mouseY > 300 && mouseY < 400) {
    fill(241, 50, 100);
    rect(250, 350, 200, 100);
    fill(57, 88, 100);
    ellipse(250, 300, 50, 50);
  }
  else if (mouseX > 450 && mouseX < 650 && mouseY > 300 && mouseY < 400) {
    fill(241, 50, 100);
    rect(550, 350, 200, 100);
    fill(57, 88, 100);
    ellipse(550, 300, 50, 50);
  }
  
  fill(241, 58, 59);
  text("Pedra", 105, 510);
  text("Papel", 400, 510);
  text("Tesoura", 695, 510);
  text("Lagarto", 250, 360);
  text("Spock", 550, 360);
  
  fill(277, 40, 100);
  rect(400, 100, 900, 100);
  
  textSize(40);
  fill(277, 100, 100);
  text("Pedra, Papel, Tesoura, Lagarto e Spock!", 400, 110);
  
  for(int i = 0; i < 5; i++){
    if(brilhando){
      if(i % 2 != 0)
        fill(57, 88, 100);
      else
        fill(277, 70, 100);
    } else {
      if(i % 2 == 0)
        fill(57, 88, 100);
      else
        fill(277, 70, 100);
    }
      
    ellipse(i * width/5 + 100, 50, 40, 40);
    ellipse(i * width/5 + 100, 150, 40, 40);
  }
  
  aux++;
  if (aux == 60) {
    brilhando = !brilhando;
    aux = 1;
  }
    
  textSize(20);
  if(!selecionado){
    fill(241, 58, 100);
    rect(400, 220, 600, 50);
    fill(241, 58, 59);
    text("Escolha sua jogada!", 400, 225);
  }

  if(selecaoMaquina == 1){
    stringMaquina = "Pedra";
  }
  else if(selecaoMaquina == 2){
    stringMaquina = "Papel";
  }
  else if(selecaoMaquina == 3){
    stringMaquina = "Tesoura";
  }
  else if(selecaoMaquina == 4){
    stringMaquina = "Lagarto";
  }
  else if(selecaoMaquina == 5){
    stringMaquina = "Spock";
  }
  
  if(selecaoJogador == 1){
    stringJogador = "Pedra";
  }
  else if(selecaoJogador == 2){
    stringJogador = "Papel";
  }
  else if(selecaoJogador == 3){
    stringJogador = "Tesoura";
  }
  else if(selecaoJogador == 4){
    stringJogador = "Lagarto";
  }
  else if(selecaoJogador == 5){
    stringJogador = "Spock";
  }
  
  if(selecaoJogador != 0 && selecaoMaquina == selecaoJogador){
    empate = true;
    fill(241, 58, 100);
    rect(400, 220, 600, 50);
    fill(241, 58, 59);
    text("Empate! Os dois escolheram " + stringJogador + "!", 400, 225);
  }
  else if(selecaoJogador == 1){
    empate = false;
    if(selecaoMaquina == 2){
      venceu = false;
    }
    else if(selecaoMaquina == 3){
      venceu = true;
    }
    else if(selecaoMaquina == 4){
      venceu = true;
    }
    else if(selecaoMaquina == 5){
      venceu = false;
    }
  }
  else if(selecaoJogador == 2){
    empate = false;
    if(selecaoMaquina == 1){
      venceu = true;
    }
    else if(selecaoMaquina == 3){
      venceu = false;
    }
    else if(selecaoMaquina == 4){
      venceu = false;
    }
    else if(selecaoMaquina == 5){
      venceu = true;
    }
  }
  else if(selecaoJogador == 3){
    empate = false;
    if(selecaoMaquina == 1){
      venceu = false;
    }
    else if(selecaoMaquina == 2){
      venceu = true;
    }
    else if(selecaoMaquina == 4){
      venceu = true;
    }
    else if(selecaoMaquina == 5){
      venceu = false;
    }
  }
  else if(selecaoJogador == 4){
    empate = false;
    if(selecaoMaquina == 1){
      venceu = false;
    }
    else if(selecaoMaquina == 2){
      venceu = true;
    }
    else if(selecaoMaquina == 3){
      venceu = false;
    }
    else if(selecaoMaquina == 5){
      venceu = true;
    }
  }
  else if(selecaoJogador == 5){
    empate = false;
    if(selecaoMaquina == 1){
      venceu = true;
    }
    else if(selecaoMaquina == 2){
      venceu = false;
    }
    else if(selecaoMaquina == 3){
      venceu = true;
    }
    else if(selecaoMaquina == 4){
      venceu = false;
    }
  }
  
  if(venceu && selecionado && !empate){
    fill(241, 58, 100);
    rect(400, 220, 600, 50);
    fill(241, 58, 59);
    text("Você venceu! " + stringJogador + " ganha de " + stringMaquina +"!", 400, 225);
    selecaoPronta = false;
  }
  else if(!venceu && selecionado && !empate){
    fill(241, 58, 100);
    rect(400, 220, 600, 50);
    fill(241, 58, 59);
    text("Você perdeu! " + stringJogador + " perde para " + stringMaquina +"!", 400, 225);
    selecaoPronta = false;
  }
}

void mousePressed() {
  if (mousePressed && mouseX > 5 && mouseX < 205 && mouseY > 450 && mouseY < 550) {
    selecionado = true;
    selecaoJogador = 1;
  }
  else if (mousePressed && mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 550) {
    selecionado = true;
    selecaoJogador = 2;
  }
  else if (mousePressed && mouseX > 595 && mouseX < 795 && mouseY > 450 && mouseY < 550) {
    selecionado = true;
    selecaoJogador = 3;
  }
  else if (mousePressed && mouseX > 150 && mouseX < 350 && mouseY > 300 && mouseY < 400) {
    selecionado = true;
    selecaoJogador = 4;
  }
  else if (mousePressed && mouseX > 450 && mouseX < 650 && mouseY > 300 && mouseY < 400) {
    selecionado = true;
    selecaoJogador = 5;
  }
  else {
    selecionado = false;
    selecaoJogador = 0;
  }
  
  if(selecionado){
    selecaoMaquina = (int)random(1,6);
  }
}
