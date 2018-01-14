class Cluster {
  
  int xOffset;
  int yOffset;
  float fu, q;
  int unit;
  int xDirection = 1;
  int yDirection = 1;
  float speed; 
  
  // Contructor
  Cluster(int xOffsetTemp, int yOffsetTemp, int fuTemp, int qTemp, float speedTemp, int tempUnit) {
    xOffset = xOffsetTemp;
    yOffset = yOffsetTemp;
    fu = fuTemp;
    q = qTemp;
    speed = speedTemp;
    unit = tempUnit;
  }
  
  // Custom method for updating the variables
  void run() {
    fu = fu + (speed * xDirection);
    if (fu >= unit || fu <= 0) {
      xDirection *= -1;
      fu = fu + (1 * xDirection);
      q = q + (1 * yDirection);
    }
    if (q >= unit || q <= 0) {
      yDirection *= -1;
      q = q + (1 * yDirection);
    }
  }
  
  // Custom method for drawing the object
  void display() {
    noStroke();
    fill(random(255), random(255), random(255));
    ellipse(xOffset + fu, yOffset + q, 6, 6);
  }
}
  