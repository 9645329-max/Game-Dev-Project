// Janame Lindberg | Door Class

class Door {
  float x, y, w, h;
  PImage w2;
  boolean opened;

  Door(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    opened = false;
    w2 = loadImage("Prison Escape Win Screen.png");
  }

  void display() {
    fill(92, 68, 16);
    rect(this.x, this.y, this.w, this.h);
  }

  void checkPlayer(Player p, Key k) {
    // Check Collision if Key Collected
    if (this.opened == false && k.collected == true) {
      float px = p.x - p.r;
      float py = p.y - p.r;
      float pw = p.w;
      float ph = p.h;

      boolean collidedX = px + pw >= this.x && px <= this.x + this.w;
      boolean collidedY = py + ph >= this.y && py <= this.y + this.h;

      if (collidedX && collidedY) {
        this.opened = true;
        image(this.w2, 0, 0, width, height);
        noLoop();
      }
    }
  }
}
