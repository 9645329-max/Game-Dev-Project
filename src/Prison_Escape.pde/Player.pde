class Player {
  float x, y;
  float r = 40;

  Player(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void display() {
    fill(250, 100, 0);
    ellipse(x, y, r*2, r*2);
  }

  void move(float dx, float dy) {
    x += dx;
    y += dy;
  }
}
