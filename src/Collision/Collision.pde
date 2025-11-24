Player player;
ArrayList<Obstacle> obstacles;

boolean gameOver = false;
float score = 0;
int level = 1;

float lastTime;
float levelTimer = 0;

void setup() {
  size(600, 400);

  player = new Player();
  obstacles = new ArrayList<Obstacle>();

  // permanent, unmoving cubes
  obstacles.add(new Obstacle(300, 100, 40, 40, color(255, 0, 0)));
  obstacles.add(new Obstacle(400, 250, 60, 20, color(0, 200, 0)));
  obstacles.add(new Obstacle(500, 180, 30, 60, color(0, 0, 255)));

  lastTime = millis();
  levelTimer = millis();
}

void draw() {
  background(220);

  float now = millis();
  float dt = (now - lastTime) / 1000.0;
  lastTime = now;

  if (!gameOver) update(dt);
  render();
}

void update(float dt) {
  score += dt * level;

  if (millis() - levelTimer > 10000) {
    level++;
    score += 100;
    levelTimer = millis();
  }

  player.update(dt);

  // check collision
  for (Obstacle o : obstacles) {
    if (player.collides(o)) {
      gameOver = true;
    }
  }
}

void render() {
  for (Obstacle o : obstacles) o.draw();
  player.draw();

  fill(0);
  textSize(20);
  text("Score: " + int(score), 10, 25);
  text("Level: " + level, 10, 45);

  if (gameOver) {
    textAlign(CENTER);
    text("GAME OVER", width/2, height/2);
    textAlign(LEFT);
  }
}
