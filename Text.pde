void typewriteText(){
  if(counter < text1.length())
  counter++;
  frameRate(9);
  text(text1.substring(0, counter), width/2, height/2);
  fill(#00FFF9);
  textAlign(CENTER, CENTER);
  
}