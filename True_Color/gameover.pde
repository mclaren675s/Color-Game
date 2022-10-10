void gameover() {
  background(red);
  fill(white);
  textSize(80);
  textFont(fancy);
  text("GAME OVER!", width/2, 200);
  textSize(45);
  text("SCORE "+score, width/2, 369);
  text("HIGHSCORE "+highscore, width/2, 310);

  if (score>highscore) highscore = score;

  //buttons
  tactilecircle(650, 625, 150);
  circle(650, 625, 150);
  stroke(black);
  line(600, 625, 700, 625);
  line(700, 625, 650, 600);
  line(700, 625, 650, 650);
}

void gameoverClicks() {
  if (dist(650, 625, mouseX, mouseY)<75) {
    setup();
    mode = INTRO;
  }
}
