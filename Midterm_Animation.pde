import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;

float linespeed = 2.0;
float endx = 0;
float endy = 0;
float speed = 0.5;
float t = 0;
float c = 0;
float p;

String text1 = "I find myself wanting to be there but wanting to reflect from afar";
PFont font;
int counter;

Building b;
Building b1;
Building b2;

int unit = 20;
int count;
Cluster[] k;
Cluster[] k1;

void setup() {
  
 //establish environment settings
 
  size(displayWidth, displayHeight);
  frameRate(60);
  smooth();
  noFill();
  stroke(#00F4FF);
  strokeWeight(2);
  textFont(createFont("Meiryo", 30));
  
  //instantiate song
  
  minim = new Minim(this);
  song = minim.loadFile("Fragile.mp3");
  song.play();
  
  int wideCount = displayWidth / unit;
  int highCount = displayHeight / unit;
  count = wideCount * highCount;
  k = new Cluster[count];
  
  int index = 0;
  for(int q = 0; q < highCount; q++) {
    for(int fu = 0; fu < wideCount; fu++) {
      k[index++] = new Cluster(fu * unit, q * unit, unit/2, unit/2, random(0.05, 0.8), unit);
    }
  }
}
  

void draw() {
  background(0);
  
  // SCENE ONE
  
  pushStyle();
  stroke(#17FF5A);
  float a = (p / (float) width) * 90f; // multiply by an angle between 0 to 90
  t = radians(a);
  translate(width/4, height); // tree 1
  line(0, 0, 0, -400); // draw a line 400 pixels
  translate(0, -400);
  branch(120); // call the branch function at the end of that line
//------------------------------------
  a = (p / (float) width) * 90f; // multiply by an angle between 0 to 90
  t = radians(a);
  translate(width/2, height/2); // tree 2
  line(0, 0, 0, -400); // draw a line 400 pixels
  translate(0, -400);
  branch(120); // call the branch function at the end of that line
  popStyle();
  
  p += 7; // add assign 7


  // SCENE TWO
  
  if(frameCount > 875) {
    translate(-300, -250);
    
    pushStyle();
  
    beginShape();
  
    stroke(#00FFF9);
  
    for (float theta = 0; theta <= 2 * PI; theta += 0.01){
    float rad = r(theta, 
    1.0 + sin(c) * 0.5,
    1.0 + cos(c) * 0.5,
    16,
    -0.2,
    1 + sin(t) * 0.5,
    1 + cos(t) * 0.5);
  
    float x = rad * cos(theta) * 50;
    float y = rad * sin(theta) * 50;
    vertex (x, y);
  
   }
  
  
    endShape();
  
    t += 0.1;
    c -= 0.05;
  
    popStyle();
}

// SCENE THREE

if(frameCount > 1400) {
  clear();
  
  pushMatrix();
  b = new Building();
  translate(-width/2, -150);
  b.display();
  popMatrix();
  
  pushMatrix();
  b1 = new Building();
  translate(-250, -150);
  b.display();
  popMatrix();
  
  pushMatrix();
  b2 = new Building();
  translate(100, -150);
  b.display();
  popMatrix();
  
  // SCENE FOUR
  
  if(frameCount > 1500) {
    clear();
    translate(- width/2, - height/2 + 200);
    typewriteText();
    
    //translate(width/2, height/2);
    pushStyle();
    pushMatrix();
    noFill();
    stroke(255);
    float d = frameCount + 100;
    translate(width/2, height/2);
    rotate(radians(d));
    rect(0, 0, 200, 250);
    popMatrix();
    
    pushMatrix();
    float uu = frameCount + 100;
    translate(width/2, height/2);
    rotate(radians(-uu));
    rect(0, 0, 200, 250);
    popMatrix();
    
    popStyle();
  }
  
  // SCENE FIVE
    
    if(frameCount > 1650) {
      clear();
      pushMatrix();
      for (Cluster k : k ) {
        translate(0, 0);
        k.run();
        k.display();
      }
      popMatrix();
      
      for(Cluster k1 : k) {
        translate(0, 0);
        k1.run();
        k1.display();
      }
    }
  
   // SCENE SIX
  
   if(frameCount > 1770) {
      clear();
      pushMatrix();
      background(random(255), random(255), random(255));
      noFill();
      strokeWeight(10);
      stroke(0);
      
      line(width/2 - 5, 0, width/2 - 5, endy);
      endy += linespeed;
      
      line(width, 0, -30, endy);
      endy += linespeed;
      
      line(0, 0, width, endy);
      endy += linespeed;
      popMatrix();
   }
   
   // SCENE SEVEN
   
   if(frameCount > 2060) {
     clear();
     pushStyle();
     background(0);
     strokeWeight(2);
     stroke(255);
     line(0, height/2, endx, height/2);
     endx += linespeed * 3;
     popStyle();
   }
     
 
     
   }
    
  
  }
  