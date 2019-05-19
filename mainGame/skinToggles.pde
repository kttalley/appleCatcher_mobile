String playerContainerSkin = "basket";
String catchMeSkin = "egg";
float containerFloor = 280 * displayDensity;

void skinToggles() {
  if (playerContainerSkin == "bucket") {
    playerContainer = loadImage("bucket.png");
    containerFloor = 300 * displayDensity;
  }
  if (playerContainerSkin == "basket") {
    playerContainer = loadImage("basket.png");
    containerFloor = 270 * displayDensity;
  }

  if (catchMeSkin == "egg") {
    catchMe = loadImage("egg.png");
  }
  if (catchMeSkin == "apple") {
    catchMe = loadImage("apple.png");
  }
}
