

void setup() {
  fullScreen();
  noStroke();
  orientation(PORTRAIT);
  skinToggles();
}

Sun bgSun = new Sun (500* displayDensity,100* displayDensity, 2, 0, 2);

void draw() {
  levelLogic();
  //sky
  background(100,120,255);
  bgSun.show();
  bgSun.update();
  //tree
  for (int i = 50; i < width; i = i + 150) {
    fill(200,160,20);
    rect(i* displayDensity, 120* displayDensity, 50* displayDensity, 250* displayDensity);
    fill(55,200,100);
    triangle((i - 45)* displayDensity, 150* displayDensity, (i + 25)* displayDensity, 40* displayDensity, (i + 95)* displayDensity, 150* displayDensity);
  }
  //grass
  noStroke();
  fill(44,200,190);
  rect(0, 350* displayDensity, width, height);
  //customizable - eg. apple, egg, pinecone
  
  if (gameScreen == "start") {
    // fill(255, 100, 10);
    // rect(width / 2, height / 2, 100, 100);
    fill(255);
    textSize(20* displayDensity);
    text("Press the spacebar to begin.",width/2 - 100,height/1.8);
    if(mousePressed){
        gameScreen = "game";
    }
  }

  if (gameScreen == "game") {
    fallLogic();
    translate(catchMeX, catchMeY);
    scale(1*displayDensity);
    image(catchMe, 0, 0);
    resetMatrix();
    //customizable - eg. bucket, basket, bunny
    image(playerContainer, mouseX - 50, containerFloor);
    catchLogic();
    HUD();

    if(level == "2"){
        lvlTxtTimer++;
        if(lvlTxtTimer > 0 && lvlTxtTimer < 50){

        textSize((18+textFloat*0.1)* displayDensity);
        text("ohhhh snap,", (mouseX - 50)* displayDensity,height/2);
        textSize((18+textFloat)* displayDensity);
        text("you made it to level two!", mouseX - 50,height/2+50);
        }

    }

  }

  if (gameScreen == "gameOver") {
    background(0);
    textSize(20* displayDensity);
    text("Game over",width/2 - 100, height/2);
    text("Total Caught: "+score,width/2 - 100, height/1.8);
    text("Click/tap anywhere on the screen to try again.",50, height/1.5);
    if(mousePressed){
        level = "1";
        score = 0;
        chances = 3;
        acc = 0.01;
        gameScreen = "start";
    }
  }
}
