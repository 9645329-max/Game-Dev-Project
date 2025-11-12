class Security {
  float x, y;
  float xspeed = 0, yspeed = 0;

  Security(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void display() {
    fill(0, 0, 200);
    ellipse(x, y, 30, 30);
  }

  void move(float dx, float dy) {
    x += dx;
    y += dy;
  }
}
