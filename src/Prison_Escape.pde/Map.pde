class Map {
  color floorColor = color(100); // gray

  void display() {
    fill(floorColor);
    rect(50, 50, width - 100, height - 100);
  }
}
