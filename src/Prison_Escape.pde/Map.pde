// Janame Lindberg | Map Class

class Map {

  color floorColor = color(100); 

  ArrayList<Wall> walls;

  Map() {
    walls = new ArrayList<Wall>();

    // Exterior Walls
    walls.add(new Wall(-2000, -2000, 4000, 50));
    walls.add(new Wall(-2000, -2000, 50, 4000));
    walls.add(new Wall(-2000, 2000, 4050, 50));
    walls.add(new Wall(2000, -2000, 50, 4000));

    // Bottom of Prisoner Zone
    walls.add(new Wall(-1700, -600, 2200, 50));

    // Cell 1
    walls.add(new Wall(-1500, -2000, 50, 750));
    walls.add(new Wall(-2000, -1300, 350, 50));
    
    // Cell 2
    walls.add(new Wall(-1000, -2000, 50, 750));
    walls.add(new Wall(-1500, -1300, 350, 50));
    
    // Cell 3
    walls.add(new Wall(-500, -2000, 50, 750));
    walls.add(new Wall(-1000, -1300, 350, 50));
    
    // Cell 4
    walls.add(new Wall(0, -2000, 50, 750));
    walls.add(new Wall(-500, -1300, 350, 50));
    
    // Cell 5
    walls.add(new Wall(500, -2000, 50, 1000));
    walls.add(new Wall(0, -1300, 350, 50));
    
    // Cafeteria and Kitchen
    walls.add(new Wall(500, -800, 50, 1400));
    walls.add(new Wall(500, 0, 1300, 50));
    walls.add(new Wall(500, 600, 1500, 50));
    
    // Gym
    walls.add(new Wall(-1700, 600, 2200, 50));
    walls.add(new Wall(-1600, -600, 50, 1000));
    
    // Guard Area
    walls.add(new Wall(500, 600, 50, 1200));
    
  }

  void display() {

    // Floor
    fill(floorColor);
    rect(-2000, -2000, 4000, 4000);

    // Walls
    fill(50);
    for (Wall w : walls) {
      w.display();
    }
  }
}
