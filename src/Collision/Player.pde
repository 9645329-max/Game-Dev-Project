class Player {
  float x = 80;
  float y = 200;
  float w = 30;
  float h = 30;
  float speed = 200;

  void update(float dt) {

    // --- Free movement in all directions ---
    if (keyPressed) {
      if (key == 'w' || keyCode == UP)    y -= speed * dt;
      if (key == 's' || keyCode == DOWN)  y += speed * dt;
      if (key == 'a' || keyCode == LEFT)  x -= speed * dt;
      if (key == 'd' || keyCode == RIGHT) x += speed * dt;
    }
    // ---------------------------------------

    // constrain inside window
    x = constrain(x, w/2, width - w/2);
    y = constrain(y, h/2, height - h/2);
  }

  void draw() {
    rectMode(CENTER);
    fill(0, 150, 255);
    rect(x, y, w, h);
  }

  boolean collides(Obstacle o) {
    return abs(x - o.x) * 2 < (w + o.w) &&
           abs(y - o.y) * 2 < (h + o.h);
  }
}
