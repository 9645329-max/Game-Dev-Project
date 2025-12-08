// Torr Hardin, Janame Lindberg | Prison Escape

Player p1;
Map m1;
Key k1;
Door door;
ArrayList<Security> guards;

PImage bg1, go1;

boolean wPressed, aPressed, sPressed, dPressed, play;

void setup() {
  fullScreen();
  noCursor();


  m1 = new Map();
  p1 = new Player(300, -1700);
  k1 = new Key(600, 300, 80, 50);

  door = new Door(0, 1970, 100, 80);

  guards = new ArrayList<Security>();
  guards.add(new Security(-1700, -1000));
  guards.add(new Security(-1500, 300));
  guards.add(new Security(800, 1000));
  guards.add(new Security(000, 1700));
  guards.add(new Security(-1000, 1000));

  bg1 = loadImage("Prison Escape Start Screen.png");
  go1 = loadImage("Prison End Screen.png");

  play = false;
}

void draw() {
  if (!play) {
    startScreen();
    return;
  }

  background(179, 160, 89);

  // Camera
  pushMatrix();
  translate(width/2 - p1.x, height/2 - p1.y);

  m1.display();
  k1.display();
  door.display();

  // Display Guards
  for (Security g : guards) {
    g.display();
  }

  p1.display();
  popMatrix();

  // Movement
  float speed = 30;
  if (wPressed) p1.move(0, -speed);
  if (sPressed) p1.move(0,  speed);
  if (aPressed) p1.move(-speed, 0);
  if (dPressed) p1.move( speed, 0);

  // Check key pickup
  k1.checkPickup(p1);

  // Check door interaction
  door.checkPlayer(p1, k1);

  // Check guard collisions
  gameOver();
}

void keyPressed() {
  if (key == 'w' || key == 'W') wPressed = true;
  if (key == 's' || key == 'S') sPressed = true;
  if (key == 'a' || key == 'A') aPressed = true;
  if (key == 'd' || key == 'D') dPressed = true;

  if (!play && key == ' ') play = true;
}

void keyReleased() {
  if (key == 'w' || key == 'W') wPressed = false;
  if (key == 's' || key == 'S') sPressed = false;
  if (key == 'a' || key == 'A') aPressed = false;
  if (key == 'd' || key == 'D') dPressed = false;
}

void startScreen() {
  image(bg1, 0, 0, width, height);
}

// Collision
boolean collideRect(float x1, float y1, float w1, float h1,
                    float x2, float y2, float w2, float h2) {
  return !(x1 + w1 < x2 ||
           x1 > x2 + w2 ||
           y1 + h1 < y2 ||
           y1 > y2 + h2);
}

// Check Player Guard Collision
void gameOver() {

  float px = p1.x - p1.r;
  float py = p1.y - p1.r;
  float pw = p1.w;
  float ph = p1.h;

  for (Security g : guards) {
    float gx = g.x - g.r;
    float gy = g.y - g.r;
    float gw = g.r * 2;
    float gh = g.r * 2;

    if (collideRect(px, py, pw, ph, gx, gy, gw, gh)) {
      image(go1, 0, 0, width, height);
      noLoop();
      return;
    }
  }
}
