// Torr Hardin, Janame Lindberg | Nov 12, 2025 | Prison Escape
Player p1;
Map m1;
Security s1;

boolean wPressed, aPressed, sPressed, dPressed;

void setup() {
  size(1920,1080);
  m1 = new Map();
  p1 = new Player(width/2, height/2);
  s1 = new Security(width/2, height/2);
}

void draw() {
  background(0);
  m1.display();
  s1.display();
   p1.display();
  
  float speed = 3;
  
  // movement code
  if (wPressed) p1.move(0, -speed);
  if (sPressed) p1.move(0, speed);
  if (aPressed) p1.move(-speed, 0);
  if (dPressed) p1.move(speed, 0);
  
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
