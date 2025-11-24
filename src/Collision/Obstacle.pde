class Obstacle {
  float x, y, w, h;
  color c;

  Obstacle(float x, float y, float w, float h, color c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c = c;
  }

  void draw() {
    rectMode(CENTER);
    fill(c);
    rect(x, y, w, h);
  }
}
