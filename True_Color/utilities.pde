void tactilecircle (int x, int y, int d) {
  if (dist(x,y,mouseX,mouseY)<d/2) {
    stroke(white);
  } else {
    stroke(black);
  }
}
