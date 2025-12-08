// Torr Hardin | Player Class

class Player {
  float x, y;
  float r = 40;
  float w, h;
  PImage p2;

  Player(float x, float y) {
    this.p2 = loadImage("prisoner 1.png");
    this.x = x;
    this.y = y;
    this.w = r * 2;
    this.h = r * 3.2;
  }

  void display() {
    image(this.p2, this.x - r, this.y - r, this.w, this.h);
  }

  void move(float dx, float dy) {
    float newX = this.x + dx;
    float newY = this.y + dy;

    if (!collidesWithWalls(newX, this.y)) {
      this.x = newX;
    }

    if (!collidesWithWalls(this.x, newY)) {
      this.y = newY;
    }
  }

  boolean collidesWithWalls(float checkX, float checkY) {
    float px = checkX - r; // left of sprite
    float py = checkY - r; // top of sprite
    float pw = this.w;
    float ph = this.h;

    for (Wall w : m1.walls) {
      if (collideRect(px, py, pw, ph, w.x, w.y, w.w, w.h)) {
        return true;
      }
    }
    return false;
  }
}
