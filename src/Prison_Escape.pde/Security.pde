// Torr Hardin | Security Class

class Security {
  float x, y;
  float r = 40;
  float w, h;
  PImage s2;

  Security(float x, float y) {
    s2 = loadImage("guard 1.png");
    this.x = x;
    this.y = y;

    w = r * 2;
    h = r * 3.2;
  }

  void display() {
    image(s2, x - r, y - r, w, h);
  }
}
