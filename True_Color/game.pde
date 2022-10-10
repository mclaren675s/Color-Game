void game() {
  //left button
  pushMatrix();
  strokeWeight(12);
  fill(#40C9FF);
  rect(0, 0, 400, 800);
  fill(black);
  textSize(80);
  text("match", 200, 400);

  //right button
  fill(#E81CFF);
  rect(400, 0, 400, 800);
  fill(black);
  text("no match", 600, 400);
  popMatrix();

  //score
  timer = timer - 0.5;
  fill(colors[randomColor]);
  textSize(timer);
  text(words[randomWord], width/2, 300);
  println(timer);

  //mechanics
  match = (randomWord == randomColor);
  //boolean function | match | means =====> if match then do true, if no-match then do false

  //timer run out
  if (timer<0) {
    mode = GAMEOVER;
  }
}

void gameClicks() {
  if (timer > 0) {

    //match button
    if (mouseX > 0 && mouseX < 400 && mouseY > 0 && mouseY < 800) {
      if (match == true) {
        SUCCESS.rewind();
        SUCCESS.play();
        score = score + 1;
        timer = 100;
        randomWord = (int) random(0, 3);
        randomColor = (int) random(0, 3);
      } else {
        ENDGAME.rewind();
        ENDGAME.play();
        mode = GAMEOVER;
      }
    }

    //no match button
    if (mouseX > 400 && mouseX < 800 && mouseY > 0 && mouseY < 800) {
      if (match == false) {
        SUCCESS.rewind();
        SUCCESS.play();
        score = score + 1;
        timer = 100;
        randomWord = (int) random(0, 3);
        randomColor = (int) random(0, 3);
      } else {
        FAILURE.rewind();
        FAILURE.play();
        mode = GAMEOVER;
      }
    }
  }
}///////////////////////////////////////////////////////////////////////
