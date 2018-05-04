import processing.sound.*;

/********* VARIABLES GLOBALES *********/

personaje per1;
Aang aang1;
Katara katara1;
Toph toph1;
Zuko zuko1;
Azula azula1;
Tsuki tsuki1;


int gameScreen;
int turn;
int hp1;
int hp2;
PImage bg;
PImage storyscreen;
PImage charselect;
PImage scenario;
PImage win;
PImage aangs;
PImage kataras;
PImage tophs;
PImage zukos;
PImage azulas;
PImage tsukis;
SoundFile file;


// Player 1, 2.

personaje player1;
personaje player2;

//Turno para seleccionar.
int ts = 0;

boolean player1Selection = false;
boolean player2Selection = false;

/********* SETUP BLOCK *********/

void setup() {
  size(800, 600);
  bg = loadImage ("PORTADA.jpg");
  storyscreen = loadImage("HISTORIA.jpg");
  charselect = loadImage("SELECCION.jpg");
  scenario = loadImage("ESCENARIO.jpg");
  win = loadImage("FIN.jpg");

  file = new SoundFile(this, "Avatar_R.mp3");
  file.play();
  file.loop();
  Aang=loadImage("AANG.png");
  Katara=loadImage("KATARA.png");
  Toph=loadImage("TOPH.png");
  Zuko=loadImage("ZUKO.png");
  Azula=loadImage("AZULA.png");
  Tsuki=loadImage("TSUKI.png");

  // Personajes jugador 1.
  aang1 = new Aang ("Aang", 200, 23, 23);
  katara1 = new Katara ("Katara", 200, 25, 7);
  toph1 = new Toph ("Toph", 200, 17, 12);
  zuko1 = new Zuko ("Zuko", 200, 18, 18);
  azula1 = new Azula ("Azula", 200, 24, 19);
  tsuki1 = new Tsuki ("Tsuki", 200, 20, 22);
}

/********* DRAW BLOCK *********/

void draw() {
  // Display the contents of the current screen.
  switch (gameScreen) {
  case 0:
    iniScreen();
    break;
  case 1:
    stScreen();
    break;
  case 2:
    charScreen();
    break;
  case 3:
    figScreen();
    break;
  case 4:
    vicScreen();
    break;
  }
}

/********* PANTALLAS *********/

// 0: Initial Screen                  (iniScreen)
// 1: Story Screen                    (stScreen)
// 2: Character Selection Screen      (charScreen)                     
// 3: Fighting Screen                 (FigScreen)
// 4: Victory Screen                  (VicScreen) 

void iniScreen() {
  // Código de pantalla de inicio.
  image (bg, 0, 0);  
  if (mousePressed) {
    gameScreen = 1;
  }
}
void stScreen() {
  // Código de pantalla de historia.
  image(storyscreen, 0, 0);
  if (keyPressed) {
    gameScreen = 2;
  }
}
void charScreen() {
  // Código de pantalla de selección de personajes.
  pushMatrix();
  image(charselect, 0, 0);
  popMatrix();

  if (player1Selection && player2Selection) {

    gameScreen = 3;
    turn =+1;
  }
}

void figScreen() {
  pushMatrix();
  translate(400, 300);
  image(scenario, 0, 0);
  popMatrix();

  println(player1.name, player1.hp);
  println(player2.name, player2.hp);

  //BARRA DE VIDA
  pushMatrix();
  translate(70, 100);
  noStroke();
  rectMode(CORNER);
  if (player1.hp < 50)
  {
    fill(255, 0, 0);
  } else if (player1.hp <= 100)
  {
    fill(255, 200, 0);
  } else
  {
    fill(0, 255, 0);
  }
  rect(0, 0, player1.hp, 30);
  popMatrix();

  //Barra p2
  pushMatrix();
  translate(500, 100);
  noStroke();
  if (player2.hp < 50)
  {
    fill(255, 0, 0);
  } else if (player2.hp <= 100)
  {
    fill(255, 200, 0);
  } else
  {
    fill(0, 255, 0);
  }
  rectMode(CORNER);
  rect(0, 0, player2.hp, 30);
  popMatrix();

  //visualización de personajes
  pushMatrix();
  if (player1 == aang1) {
    pushMatrix();
    imageMode(CENTER);
    translate(160, 430);
    image(Aang, 0, 0);
    popMatrix();
  } else if (player1 ==katara1) {
    pushMatrix();
    imageMode(CENTER);
    translate(160, 430);
    image(Katara, 0, 0);
    popMatrix();
  } else if (player1 ==toph1) {
    pushMatrix();
    imageMode(CENTER);
    translate(160, 430);
    image(Toph, 0, 0);
    popMatrix();
  } else if (player1 ==zuko1) {
    pushMatrix();
    imageMode(CENTER);
    translate(160, 430);
    scale(-1, 1);
    image(Zuko, 0, 0);
    popMatrix();
  } else if (player1 ==azula1) {
    pushMatrix();
    imageMode(CENTER);
    translate(160, 440);
    image(Azula, 0, 0);
    popMatrix();
  } else if (player1 ==tsuki1) {
    pushMatrix();
    imageMode(CENTER);
    translate(160, 430);
    scale(-1, 1);
    image(Tsuki, 0, 0);
    popMatrix();
  }

  if (player2 == aang1) {
    pushMatrix();
    imageMode(CENTER);
    translate(630, 430);
    scale(-1, 1);
    image(Aang, 0, 0);
    popMatrix();
  } else if (player2 ==katara1) {
    pushMatrix();
    imageMode(CENTER);
    translate(630, 430);
    scale(-1, 1);
    image(Katara, 0, 0);
    popMatrix();
  } else if (player2 ==toph1) {
    pushMatrix();
    imageMode(CENTER);
    translate(630, 430);
    scale(-1, 1);
    image(Toph, 0, 0);
    popMatrix();
  } else if (player2 ==zuko1) {
    pushMatrix();
    imageMode(CENTER);
    translate(630, 430);
    image(Zuko, 0, 0);
    popMatrix();
  } else if (player2 ==azula1) {
    pushMatrix();
    imageMode(CENTER);
    translate(630, 440);
    scale(-1, 1);
    image(Azula, 0, 0);
    popMatrix();
  } else if (player2 ==tsuki1) {
    pushMatrix();
    imageMode(CENTER);
    translate(630, 430);
    image(Tsuki, 0, 0);
    popMatrix();
  }
  popMatrix();


  if (player1.hp <= 0 || player2.hp<=0) {
    gameScreen =4;
  }

  switch (turn) {
  case 1:
    keyPressed();
    if ((key=='a') || (key == 'A') ) {
      player2.hp -= (player1.attack - (player2.defense/2));
      turn = 2;
    }
    break;
  case 2:
    keyPressed();
    if ((key=='l') || (key == 'L') ) {
      player1.hp -= (player2.attack - (player1.defense/2));
      turn = 1;
    }
    break;
  }
}

void vicScreen() {
  // Código de pantalla de victoria.
  pushMatrix();
  translate(400, 300);
  image (win, 0, 0);
  popMatrix();

  if (mousePressed) {
    gameScreen = 2;
    pushMatrix();
    translate(400, 300);
    image(charselect, 0, 0);
    popMatrix();
    player1Selection = false;
    player2Selection = false;
    ts = 0;
    turn = 0;
    player1.hp = hp1;
    player2.hp = hp2;
  }
}



/********* INPUTS *********/
void mousePressed() {

  if (gameScreen == 2) {

    if ((mouseX> 0) && (mouseX< 267) && (mouseY> 0) && (mouseY< 300)) {
      if (ts == 0) {
        player1 = aang1;
        hp1 = player1.hp;
        player1Selection = true;
        ts = 1;
        println("Player 1 elige a Aang");
        aang1.display();
      } else if (ts == 1) {
        player2 = aang1;
        hp2 = player2.hp;
        player2Selection = true;
        println("Player 2 elige a Aang");
        aang1.display();
      }
    }

    if ( (mouseX> 267) && (mouseX< 533) && (mouseY> 0) && (mouseY< 300)) {
      if (ts == 0) {
        player1 = katara1;
        hp1 = player1.hp;
        player1Selection = true;
        ts = 1;
        println("Player 1 elige a Katara");
        katara1.display();
      } else if (ts == 1) {
        player2 = katara1;
        hp2 = player2.hp;
        player2Selection = true;
        println("Player 2 elige a Katara");
        katara1.display();
      }
    }

    if ( (mouseX> 533) && (mouseX< 800) && (mouseY> 0) && (mouseY< 300)) {
      if (ts == 0) {
        player1 = toph1;
        hp1 = player1.hp;
        player1Selection = true;
        ts = 1;
        println("Player 1 elige a Toph");
        toph1.display();
      } else if (ts == 1) {
        player2 = toph1;
        hp2 = player2.hp;
        player2Selection = true;
        println("Player 2 elige a Toph");
        toph1.display();
      }
    }

    if ( (mouseX> 0) && (mouseX< 267) && (mouseY> 300) && (mouseY< 600)) {
      if (ts == 0) {
        player1 = zuko1;
        hp1 = player1.hp;
        player1Selection = true;
        ts = 1;
        println("Player 1 elige a Zuko");
        zuko1.display();
      } else if (ts == 1) {
        player2 = zuko1;
        hp2 = player2.hp;
        player2Selection = true;
        println("Player 2 elige a Zuko");
        zuko1.display();
      }
    }

    if ( (mouseX> 267) && (mouseX< 533) && (mouseY> 300) && (mouseY< 600)) {
      if (ts == 0) {
        player1 = azula1;
        hp1 = player1.hp;
        player1Selection = true;
        ts = 1;
        println("Player 1 elige a Azula");
        azula1.display();
      } else if (ts == 1) {
        player2 = azula1;
        hp2 = player2.hp;
        player2Selection = true;
        println("Player 2 elige a Azula");
        azula1.display();
      }
    }

    if ( (mouseX> 533) && (mouseX< 800) && (mouseY> 300) && (mouseY< 600)) {
      if (ts == 0) {
        player1 = tsuki1;
        hp1 = player1.hp;
        player1Selection = true;
        ts = 1;
        println("Player 1 elige a Tsuki");
        azula1.display();
      } else if (ts == 1) {
        player2 = tsuki1;
        hp2 = player2.hp;
        player2Selection = true;
        println("Player 2 elige a Tsuki");
        tsuki1.display();
      }
    }
  }
}
