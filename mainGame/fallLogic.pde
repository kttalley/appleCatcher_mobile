float grav = 0;
float acc = 0;
float yVel = 0;
String level = "1";
boolean splat = false;
float splatTimer = 0;

void fallLogic() {
  if (level == "1") {
    acc = 0.01;
  }
  if (level == "2") {
    acc = 0.025;
  }
  if (level == "3") {
    acc = 0.1;
  }

  if (splat == true) {
    splatTimer++;
    if (splatTimer > 0 && splatTimer < 20) {
      fill(255);
      textSize(42);
      text("SPLAT", catchMeX - 20 + random(-5, 5), 420 + random(-5, 5));
    }
    if (splatTimer >= 20) {
      splatTimer = 0;
      splat = false;
    }
  }
  //gravity logic
  grav = grav + acc;
  yVel = yVel + grav;
  catchMeY = catchMeY + yVel;
  
  if (splat == false && catchMeY > 320* displayDensity) {
    splat = true;
  }
  if (catchMeY > 420* displayDensity) {
    //lose point
    chances = chances - 1;
    catchMeY = -75 * displayDensity;
    catchMeX = (random(0, 500)* displayDensity);
    yVel = 0;
    grav = 0;
  }
  
}
