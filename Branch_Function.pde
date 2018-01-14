void branch(float h) {
  
  h *= 0.66; // each branch will be 2/3rds the size of the previous one
  
  if(h > 2) {
    pushMatrix();
    rotate(t);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
    
    pushMatrix();
    rotate(-t);
    line(0, 0, 0, -h);
    translate(0, -h);
    branch(h);
    popMatrix();
  }
  
}