void intro() { 
  THEME.rewind();
  THEME.play();
  //background gif
  image(gif[f], 0, 0, width, height);
  f = f + 1;
  if (f == numberOfFrames) {
    f = 0;
  }

  //title
  textFont(fancy);
  text("COLOR MATCH", width/2, 300);
  
  //startbutton
  
  strokeWeight(8);
  pushMatrix();
  tactilecircle(650,625,150);
  circle(650,625,150);
  popMatrix();
  
  stroke(black);
  line(600,625,700,625);
  line(700,625,650,600);
  line(700,625,650,650);
 
}

void introClicks() {
  if (dist(650,625,mouseX,mouseY)<75) {
    mode = GAME; 
  }
}
