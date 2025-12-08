// Torr Hardin | Key Class

class Key {
  float x, y;
  float w, h;
  PImage img;
  boolean collected = false;  // has the player picked it up?

  Key(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    img = loadImage("Prison Escape Key.png");
  }

  void display() {
    if (!collected) {
      image(img, x, y, w, h);
    }
  }

  // Check for Collision with Player
  void checkPickup(Player p) {
    if (!collected) {
      float px = p.x - p.r;
      float py = p.y - p.r;
      float pw = p.w;
      float ph = p.h;

      if (!(px + pw < x || px > x + w || py + ph < y || py > y + h)) {
        collected = true;
      }
    }
  }
}
