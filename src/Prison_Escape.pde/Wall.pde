// Janame Lindberg | Wall Class

class Wall {
  float x, y, w, h;

  Wall(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void display() {
    rect(x, y, w, h);
  }
}
