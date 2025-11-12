class Player {
  float x, y;
  float xspeed = 0, yspeed = 0;

  Player(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void display() {
    fill(250, 100, 0);
    ellipse(x, y, 30, 30);
  }

  void move(float dx, float dy) {
    x += dx;
    y += dy;
  }
}
