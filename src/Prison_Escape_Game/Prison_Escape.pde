// Torr Hardin, Janame Lindberg | Nov 10, 2025 | Prison Escape
Player player;
Map map;
Security security;

void setup() {
  size(1920,1080);
  map = new Map();
  player = new Player(width/2, height/2);
  security = new Security(width/2, height/2);
}

void draw() {
  background(0);
  map.display();
  player.display();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) player.move(0, -5);
    if (keyCode == DOWN) player.move(0, 5);
    if (keyCode == LEFT) player.move(-5, 0);
    if (keyCode == RIGHT) player.move(5, 0);
  }
}
