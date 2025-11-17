// Torr Hardin, Janame Lindberg | Nov 12, 2025 | Prison Escape
Player p1;
Map m1;
Security s1;

PImage bg1, go1;

boolean wPressed, aPressed, sPressed, dPressed, play;

void setup() {
  fullScreen();
  m1 = new Map();
  p1 = new Player(width/2, height/2);
  s1 = new Security(200, 200);
  bg1 = loadImage("Prison Escape Start Screen.png");
  go1 = loadImage("Prison End Screen.png");

  play = false;
}

void draw() {
  if (!play) {
    startScreen();
  } else {
    background(0);
    m1.display();
    s1.display();
    p1.display();

    gameOver();  // collision check happens here

    float speed = 0.5;

    if (wPressed) p1.move(0, -speed);
    if (sPressed) p1.move(0,  speed);
    if (aPressed) p1.move(-speed, 0);
    if (dPressed) p1.move( speed, 0);
  }
}


void keyPressed() {
  if (key == 'w' || key == 'W') wPressed = true;
  if (key == 's' || key == 'S') sPressed = true;
  if (key == 'a' || key == 'A') aPressed = true;
  if (key == 'd' || key == 'D') dPressed = true;
}

void keyReleased() {
  if (key == 'w' || key == 'W') wPressed = false;
  if (key == 's' || key == 'S') sPressed = false;
  if (key == 'a' || key == 'A') aPressed = false;
  if (key == 'd' || key == 'D') dPressed = false;
}

void startScreen() {
  image(bg1, 0, 0);
  if (key == ' ') {
    play = true;
  }
}

void gameOver() {
  float distBetween = dist(p1.x, p1.y, s1.x, s1.y);

  if (distBetween < p1.r + s1.r) {
    image(go1, 0, 0);
    noLoop();
  }
}
