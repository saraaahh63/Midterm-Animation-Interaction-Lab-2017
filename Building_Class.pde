class Building {


  
  void display() {
    
    stroke(255);
    strokeWeight(2);
    noFill();
    
    rectMode(RADIUS);
    line(200, 150, 200, 200);
    ellipse(200, 200, 20, 20);
    rect(200, 220, 10, 30);
    rect(200, 260, 20, 25);
    rect(200, 280, 30, 20);
    rect(180, 310, 20, 30);
    rect(220, 310, 20, 30);
    
    line(200, 340, 200, 680);
    
    rect(160, 500, 10, 180); //twin
    rect(240, 500, 10, 180); // twin
    rect(200, 680, 80, 30);
    rect(200, 740, 100, 50);
    rect(200, 770, 10, 15);
  
if(frameCount > 1400) {
  
  pushStyle();
  noFill();
  strokeWeight(3);
  stroke(255);
  ellipse(200, 200, 20, 20);
  popStyle();
  
  //--------------------------------------
  
   pushStyle();
   
    stroke(random(255), random(255), random(255));
    
    line(200, 150, 200, 200);
    rect(200, 220, 10, 30);
    rect(200, 260, 20, 25);
    rect(200, 280, 30, 20);
    rect(180, 310, 20, 30);
    rect(220, 310, 20, 30);
    
    line(200, 340, 200, 680);
    
    rect(160, 500, 10, 180); //twin
    rect(240, 500, 10, 180); // twin
    rect(200, 680, 80, 30);
    rect(200, 740, 100, 50);
    rect(200, 770, 10, 15);
    
    popStyle();
}

}
 
}