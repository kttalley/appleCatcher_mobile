PImage catchMe;
PImage playerContainer;


float catchMeX = (random(0,500)* displayDensity);
float catchMeY = -75 * displayDensity;

boolean caught = false;
float caughtTimer = 0;
int score = 0;
float textFloat = 0;
boolean txtAnim = false;

void catchLogic() {
  if (dist(mouseX, 300* displayDensity, catchMeX, catchMeY) < (50* displayDensity)) {
    txtAnim = true;
    //lose point
    score = score + 1;
    catchMeY = -75;
    catchMeX = (random(0, 500*displayDensity));
    yVel = 0;
    grav = 0;
    caught = true;
  }

  if (caught == true) {
    caughtTimer++;
    if (caughtTimer > 0 && caughtTimer < 10) {
      textFloat = textFloat - 5;
      fill(255, 255, 100, 255 - textFloat * 100);
      textSize(42* displayDensity);
      text("Nice catch~", (mouseX + (textFloat*displayDensity)), (300 + (textFloat* displayDensity)));
    }

    if (caughtTimer >= 100) {
      textFloat = 0;
      caughtTimer = 0;
      caught = false;
    }
  }
}
