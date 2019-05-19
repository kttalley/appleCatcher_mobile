String gameScreen = "start";
int chances = 3;
int timeLeft;
int lvlTxtTimer = 0;


void levelLogic() {
  if (score == 0 && gameScreen != "game") {
    gameScreen = "start";
  }
  if (chances <= 0) {
    gameScreen = "gameOver";
  }
  if (level == "1" && score > 15) {
    score = 0;
    level = "2";
  }
  if (level == "2" && score > 20) {
    score = 0;
    level = "3";
  }
  if (level == "3" && score > 30) {
    gameScreen = "youWin";
  }
  //if(gameOver === true){
  //stopLoop
  //lose screen here

  // }
  //if(winScreen === true){
  //stopLoop
  //win screen here

  // }
}
